; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_cmd.c_do_chp_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_cmd.c_do_chp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_cfg_sccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCLP_HAS_CHP_RECONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"configure channel-path failed (cmd=0x%08x, response=0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_chp_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_chp_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.chp_cfg_sccb*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @SCLP_HAS_CHP_RECONFIG, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to %struct.chp_cfg_sccb*
  store %struct.chp_cfg_sccb* %16, %struct.chp_cfg_sccb** %4, align 8
  %17 = load %struct.chp_cfg_sccb*, %struct.chp_cfg_sccb** %4, align 8
  %18 = icmp ne %struct.chp_cfg_sccb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %11
  %23 = load %struct.chp_cfg_sccb*, %struct.chp_cfg_sccb** %4, align 8
  %24 = getelementptr inbounds %struct.chp_cfg_sccb, %struct.chp_cfg_sccb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 8, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.chp_cfg_sccb*, %struct.chp_cfg_sccb** %4, align 8
  %28 = call i32 @sclp_sync_request(i32 %26, %struct.chp_cfg_sccb* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.chp_cfg_sccb*, %struct.chp_cfg_sccb** %4, align 8
  %34 = getelementptr inbounds %struct.chp_cfg_sccb, %struct.chp_cfg_sccb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %38 [
    i32 32, label %37
    i32 288, label %37
    i32 1088, label %37
    i32 1104, label %37
  ]

37:                                               ; preds = %32, %32, %32, %32
  br label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.chp_cfg_sccb*, %struct.chp_cfg_sccb** %4, align 8
  %41 = getelementptr inbounds %struct.chp_cfg_sccb, %struct.chp_cfg_sccb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38, %37
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.chp_cfg_sccb*, %struct.chp_cfg_sccb** %4, align 8
  %50 = ptrtoint %struct.chp_cfg_sccb* %49 to i64
  %51 = call i32 @free_page(i64 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %19, %8
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @sclp_sync_request(i32, %struct.chp_cfg_sccb*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
