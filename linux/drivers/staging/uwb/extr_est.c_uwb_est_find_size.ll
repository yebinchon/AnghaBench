; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_est.c_uwb_est_find_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_est.c_uwb_est_find_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rceb = type { i32, i64, i32 }

@uwb_est_lock = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@uwb_est_used = common dso_local global i32 0, align 4
@uwb_est = common dso_local global %struct.TYPE_5__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"event 0x%02x/%04x/%02x: no handlers available; RCEB %4ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_est_find_size(%struct.uwb_rc* %0, %struct.uwb_rceb* %1, i64 %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rceb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rceb* %1, %struct.uwb_rceb** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @read_lock_irqsave(i32* @uwb_est_lock, i64 %16)
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %87

23:                                               ; preds = %3
  %24 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %25 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %29 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 65280
  %34 = ashr i32 %33, 8
  %35 = or i32 %31, %34
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %67, %23
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @uwb_est_used, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwb_est, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %67

50:                                               ; preds = %40
  %51 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwb_est, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 255
  %58 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @uwb_est_get_size(%struct.uwb_rc* %51, %struct.TYPE_5__* %55, i32 %57, %struct.uwb_rceb* %58, i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %87

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %36

70:                                               ; preds = %36
  %71 = load %struct.device*, %struct.device** %8, align 8
  %72 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %73 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %76 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %80 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %84 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %78, i32 %82, %struct.uwb_rceb* %83)
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %70, %65, %22
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @read_unlock_irqrestore(i32* @uwb_est_lock, i64 %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uwb_est_get_size(%struct.uwb_rc*, %struct.TYPE_5__*, i32, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, %struct.uwb_rceb*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
