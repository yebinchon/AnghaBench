; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_restore_vc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_restore_vc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { i32 }

@vc_caps = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_restore_vc_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_cap_saved_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_find_ext_capability(%struct.pci_dev* %12, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev* %20, i32 %26)
  store %struct.pci_cap_saved_state* %27, %struct.pci_cap_saved_state** %5, align 8
  %28 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %5, align 8
  %29 = icmp ne %struct.pci_cap_saved_state* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %11
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %11
  br label %39

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %5, align 8
  %38 = call i32 @pci_vc_do_save_buffer(%struct.pci_dev* %35, i32 %36, %struct.pci_cap_saved_state* %37, i32 0)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %6

42:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_cap_saved_state* @pci_find_saved_ext_cap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_vc_do_save_buffer(%struct.pci_dev*, i32, %struct.pci_cap_saved_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
