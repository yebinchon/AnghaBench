; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_write_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_write_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i64, %struct.TYPE_6__, %struct.bc_state* }
%struct.TYPE_6__ = type { %struct.usb_cardstate* }
%struct.usb_cardstate = type { i32, i32, i32, i32, i32, i64 }
%struct.bc_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"len: %d...\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"write_modem: send %d bytes\00", align 1
@gigaset_write_bulk_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not submit urb (error %d)\0A\00", align 1
@DEBUG_INTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"kfree skb (Adr: %lx)!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @write_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_modem(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca %struct.usb_cardstate*, align 8
  %8 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 4
  %11 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i64 0
  store %struct.bc_state* %12, %struct.bc_state** %6, align 8
  %13 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.usb_cardstate*, %struct.usb_cardstate** %15, align 8
  store %struct.usb_cardstate* %16, %struct.usb_cardstate** %7, align 8
  %17 = load i32, i32* @DEBUG_OUTPUT, align 4
  %18 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gig_dbg(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %25 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %1
  %31 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %32 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @dev_kfree_skb_any(%struct.TYPE_7__* %33)
  %35 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %36 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %35, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %36, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %149

39:                                               ; preds = %1
  %40 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %41 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %46 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @min(i64 %44, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %51 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %54 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @skb_copy_from_linear_data(%struct.TYPE_7__* %52, i32 %55, i32 %56)
  %58 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %59 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @skb_pull(%struct.TYPE_7__* %60, i32 %61)
  %63 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %64 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @DEBUG_OUTPUT, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @gig_dbg(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 1
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %74 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %39
  %78 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %79 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %82 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %85 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %88 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @usb_sndbulkpipe(i32 %86, i32 %89)
  %91 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %92 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @gigaset_write_bulk_callback, align 4
  %96 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %97 = call i32 @usb_fill_bulk_urb(i32 %80, i32 %83, i32 %90, i32 %93, i32 %94, i32 %95, %struct.cardstate* %96)
  %98 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %99 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GFP_ATOMIC, align 4
  %102 = call i32 @usb_submit_urb(i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %106

103:                                              ; preds = %39
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %77
  %107 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %108 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %107, i32 0, i32 1
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %115 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 0, %117
  %119 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %121 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %106
  %123 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %124 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %122
  %130 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %131 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %132 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = call i32 @gigaset_skb_sent(%struct.bc_state* %130, %struct.TYPE_7__* %133)
  %135 = load i32, i32* @DEBUG_INTR, align 4
  %136 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %137 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = ptrtoint %struct.TYPE_7__* %138 to i64
  %140 = call i32 @gig_dbg(i32 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %139)
  %141 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %142 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = call i32 @dev_kfree_skb_any(%struct.TYPE_7__* %143)
  %145 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %146 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %145, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %146, align 8
  br label %147

147:                                              ; preds = %129, %122
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %30
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @gig_dbg(i32, i8*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_7__*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.cardstate*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gigaset_skb_sent(%struct.bc_state*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
