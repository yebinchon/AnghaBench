; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_start_cbsend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_start_cbsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.cmdbuf_t*, i32, %struct.TYPE_2__ }
%struct.cmdbuf_t = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i64 }

@BS_SUSPEND = common dso_local global i32 0, align 4
@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"suspending\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@BS_ATOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"AT channel not open\00", align 1
@HD_OPEN_ATCHANNEL = common dso_local global i32 0, align 4
@BAS_TIMEOUT = common dso_local global i32 0, align 4
@BS_ATREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @start_cbsend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_cbsend(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca %struct.bas_cardstate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %9 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bas_cardstate*, %struct.bas_cardstate** %11, align 8
  store %struct.bas_cardstate* %12, %struct.bas_cardstate** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %14 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BS_SUSPEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @DEBUG_OUTPUT, align 4
  %21 = call i32 @gig_dbg(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EHOSTUNREACH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %106

24:                                               ; preds = %1
  %25 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %26 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BS_ATOPEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @DEBUG_OUTPUT, align 4
  %33 = call i32 @gig_dbg(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HD_OPEN_ATCHANNEL, align 4
  %38 = load i32, i32* @BAS_TIMEOUT, align 4
  %39 = call i32 @req_submit(i32 %36, i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %31
  %43 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %44 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %52, %42
  %48 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 1
  %50 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %49, align 8
  %51 = icmp ne %struct.cmdbuf_t* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %54 = call i32 @complete_cb(%struct.cardstate* %53)
  br label %47

55:                                               ; preds = %47
  %56 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 0
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %31
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %106

62:                                               ; preds = %24
  %63 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %64 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %99, %62
  %68 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %69 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %68, i32 0, i32 1
  %70 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %69, align 8
  store %struct.cmdbuf_t* %70, %struct.cmdbuf_t** %4, align 8
  %71 = icmp ne %struct.cmdbuf_t* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %74 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BS_ATREADY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %72, %67
  %80 = phi i1 [ false, %67 ], [ %78, %72 ]
  br i1 %80, label %81, label %100

81:                                               ; preds = %79
  %82 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %83 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %85 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %86 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %89 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @atwrite_submit(%struct.cardstate* %84, i32 %87, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %98 = call i32 @complete_cb(%struct.cardstate* %97)
  br label %99

99:                                               ; preds = %95, %81
  br label %67

100:                                              ; preds = %79
  %101 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %102 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %101, i32 0, i32 0
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %60, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @req_submit(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete_cb(%struct.cardstate*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atwrite_submit(%struct.cardstate*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
