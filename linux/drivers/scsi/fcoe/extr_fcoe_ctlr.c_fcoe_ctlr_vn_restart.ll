; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FIP_VN_RLIM_COUNT = common dso_local global i64 0, align 8
@FIP_VN_PROBE_WAIT = common dso_local global i64 0, align 8
@FIP_VN_RLIM_INT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@FIP_ST_VNMP_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*)* @fcoe_ctlr_vn_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %2, align 8
  %5 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %6 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i32 @fcoe_ctlr_disc_stop_locked(%struct.TYPE_2__* %7)
  %9 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %10 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %13 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %18 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %17, i32 0, i32 4
  %19 = call i32 @prandom_u32_state(i32* %18)
  %20 = and i32 %19, 65535
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %26 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %42 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %44 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FIP_VN_RLIM_COUNT, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %50 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = call i64 (...) @prandom_u32()
  %54 = load i64, i64* @FIP_VN_PROBE_WAIT, align 8
  %55 = urem i64 %53, %54
  store i64 %55, i64* %3, align 8
  br label %58

56:                                               ; preds = %39
  %57 = load i64, i64* @FIP_VN_RLIM_INT, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %48
  %59 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %60 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %59, i32 0, i32 2
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @msecs_to_jiffies(i64 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @mod_timer(i32* %60, i64 %64)
  %66 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %67 = load i32, i32* @FIP_ST_VNMP_START, align 4
  %68 = call i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %66, i32 %67)
  ret void
}

declare dso_local i32 @fcoe_ctlr_disc_stop_locked(%struct.TYPE_2__*) #1

declare dso_local i32 @prandom_u32_state(i32*) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
