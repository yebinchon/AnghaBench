; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c__pci_add_cap_save_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c__pci_add_cap_save_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, i32)* @_pci_add_cap_save_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pci_add_cap_save_buffer(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_cap_saved_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @pci_find_ext_capability(%struct.pci_dev* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  br label %22

18:                                               ; preds = %4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pci_find_capability(%struct.pci_dev* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %54

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 12, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.pci_cap_saved_state* @kzalloc(i32 %30, i32 %31)
  store %struct.pci_cap_saved_state* %32, %struct.pci_cap_saved_state** %11, align 8
  %33 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %11, align 8
  %34 = icmp ne %struct.pci_cap_saved_state* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %54

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %11, align 8
  %41 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %11, align 8
  %45 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %11, align 8
  %49 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %11, align 8
  %53 = call i32 @pci_add_saved_cap(%struct.pci_dev* %51, %struct.pci_cap_saved_state* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %38, %35, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_cap_saved_state* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_add_saved_cap(%struct.pci_dev*, %struct.pci_cap_saved_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
