; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_allocate_vc_save_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_allocate_vc_save_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@vc_caps = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"unable to preallocate %s save buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_allocate_vc_save_buffers(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_find_ext_capability(%struct.pci_dev* %12, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %47

23:                                               ; preds = %11
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pci_vc_do_save_buffer(%struct.pci_dev* %24, i32 %25, i32* null, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @pci_add_ext_cap_save_buffer(%struct.pci_dev* %27, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %23
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_caps, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_err(%struct.pci_dev* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37, %23
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %6

50:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_vc_do_save_buffer(%struct.pci_dev*, i32, i32*, i32) #1

declare dso_local i64 @pci_add_ext_cap_save_buffer(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
