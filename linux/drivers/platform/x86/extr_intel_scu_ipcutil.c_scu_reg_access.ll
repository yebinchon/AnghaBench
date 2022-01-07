; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipcutil.c_scu_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipcutil.c_scu_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scu_ipc_data = type { i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.scu_ipc_data*)* @scu_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scu_reg_access(i32 %0, %struct.scu_ipc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scu_ipc_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.scu_ipc_data* %1, %struct.scu_ipc_data** %5, align 8
  %7 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %8 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %56 [
    i32 130, label %23
    i32 128, label %32
    i32 129, label %41
  ]

23:                                               ; preds = %21
  %24 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %25 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %28 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @intel_scu_ipc_readv(i32* %26, i32* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %34 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %37 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @intel_scu_ipc_writev(i32* %35, i32* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %21
  %42 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %43 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %48 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.scu_ipc_data*, %struct.scu_ipc_data** %5, align 8
  %53 = getelementptr inbounds %struct.scu_ipc_data, %struct.scu_ipc_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @intel_scu_ipc_update_register(i32 %46, i32 %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %21
  %57 = load i32, i32* @ENOTTY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %41, %32, %23, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @intel_scu_ipc_readv(i32*, i32*, i32) #1

declare dso_local i32 @intel_scu_ipc_writev(i32*, i32*, i32) #1

declare dso_local i32 @intel_scu_ipc_update_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
