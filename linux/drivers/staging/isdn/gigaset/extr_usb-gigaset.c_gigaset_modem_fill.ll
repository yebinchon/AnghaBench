; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_modem_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_modem_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, %struct.TYPE_4__, %struct.bc_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bc_state = type { i64, i32 }

@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"modem_fill\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"modem_fill: busy\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"modem_fill: cb\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"modem_fill: send_cb failed\00", align 1
@DEBUG_INTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Dequeued skb (Adr: %lx)!\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"modem_fill: tx_skb\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"modem_fill: write_modem failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gigaset_modem_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_modem_fill(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bc_state*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.cardstate*
  store %struct.cardstate* %6, %struct.cardstate** %3, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 2
  %9 = load %struct.bc_state*, %struct.bc_state** %8, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i64 0
  store %struct.bc_state* %10, %struct.bc_state** %4, align 8
  %11 = load i32, i32* @DEBUG_OUTPUT, align 4
  %12 = call i32 (i32, i8*, ...) @gig_dbg(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @DEBUG_OUTPUT, align 4
  %22 = call i32 (i32, i8*, ...) @gig_dbg(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %70

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %67, %40, %23
  %25 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %26 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %24
  %30 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* @DEBUG_OUTPUT, align 4
  %36 = call i32 (i32, i8*, ...) @gig_dbg(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %38 = call i64 @send_cb(%struct.cardstate* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @DEBUG_OUTPUT, align 4
  %42 = call i32 (i32, i8*, ...) @gig_dbg(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %24

43:                                               ; preds = %34
  br label %70

44:                                               ; preds = %29
  %45 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 1
  %47 = call i64 @skb_dequeue(i32* %46)
  %48 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %49 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %51 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %70

55:                                               ; preds = %44
  %56 = load i32, i32* @DEBUG_INTR, align 4
  %57 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %58 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @gig_dbg(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %55, %24
  %62 = load i32, i32* @DEBUG_OUTPUT, align 4
  %63 = call i32 (i32, i8*, ...) @gig_dbg(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %65 = call i64 @write_modem(%struct.cardstate* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @DEBUG_OUTPUT, align 4
  %69 = call i32 (i32, i8*, ...) @gig_dbg(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %24

70:                                               ; preds = %20, %43, %54, %61
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i64 @send_cb(%struct.cardstate*) #1

declare dso_local i64 @skb_dequeue(i32*) #1

declare dso_local i64 @write_modem(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
