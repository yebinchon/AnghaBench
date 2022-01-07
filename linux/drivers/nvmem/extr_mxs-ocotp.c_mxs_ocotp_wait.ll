; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_mxs-ocotp.c_mxs_ocotp_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_mxs-ocotp.c_mxs_ocotp_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_ocotp = type { i32 }

@OCOTP_TIMEOUT = common dso_local global i32 0, align 4
@BM_OCOTP_CTRL_BUSY = common dso_local global i32 0, align 4
@BM_OCOTP_CTRL_ERROR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_ocotp*)* @mxs_ocotp_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_ocotp_wait(%struct.mxs_ocotp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_ocotp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxs_ocotp* %0, %struct.mxs_ocotp** %3, align 8
  %6 = load i32, i32* @OCOTP_TIMEOUT, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BM_OCOTP_CTRL_BUSY, align 4
  %18 = load i32, i32* @BM_OCOTP_CTRL_ERROR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %25

23:                                               ; preds = %11
  %24 = call i32 (...) @cpu_relax()
  br label %7

25:                                               ; preds = %22, %7
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BM_OCOTP_CTRL_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @BM_OCOTP_CTRL_ERROR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38, %30
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
