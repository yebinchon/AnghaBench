; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_hdlc_putbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_hdlc_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"received oversized packet discarded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.bc_state*)* @hdlc_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_putbyte(i8 zeroext %0, %struct.bc_state* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.bc_state*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.bc_state* %1, %struct.bc_state** %4, align 8
  %5 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i8, i8* %3, align 1
  %9 = call i32 @crc_ccitt_byte(i32 %7, i8 zeroext %8)
  %10 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %13 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %17
  %28 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %29 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %35 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %42 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 @dev_kfree_skb_any(%struct.TYPE_9__* %43)
  %45 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %46, align 8
  br label %53

47:                                               ; preds = %17
  %48 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %49 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i8, i8* %3, align 1
  %52 = call i32 @__skb_put_u8(%struct.TYPE_9__* %50, i8 zeroext %51)
  br label %53

53:                                               ; preds = %47, %27, %16
  ret void
}

declare dso_local i32 @crc_ccitt_byte(i32, i8 zeroext) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_9__*) #1

declare dso_local i32 @__skb_put_u8(%struct.TYPE_9__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
