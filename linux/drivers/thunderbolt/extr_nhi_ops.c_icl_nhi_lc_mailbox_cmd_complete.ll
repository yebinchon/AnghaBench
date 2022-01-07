; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_lc_mailbox_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_lc_mailbox_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@VS_CAP_18 = common dso_local global i32 0, align 4
@VS_CAP_18_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VS_CAP_19 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_nhi*, i32)* @icl_nhi_lc_mailbox_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_nhi_lc_mailbox_cmd_complete(%struct.tb_nhi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_nhi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %37

11:                                               ; preds = %2
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  %15 = add i64 %12, %14
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %29, %11
  %17 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %18 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VS_CAP_18, align 4
  %21 = call i32 @pci_read_config_dword(i32 %19, i32 %20, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @VS_CAP_18_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %37

27:                                               ; preds = %16
  %28 = call i32 @msleep(i32 100)
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @time_before(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %16, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %26, %10
  %38 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %39 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VS_CAP_19, align 4
  %42 = call i32 @pci_write_config_dword(i32 %40, i32 %41, i32 0)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
