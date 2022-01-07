; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_msg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_msg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ntb_dev = type { i32 }
%struct.idt_ntb_dev = type { i32, i64, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@IDT_MSG_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SWPxMSGCTL_REG = common dso_local global i32 0, align 4
@SWPxMSGCTL_PART = common dso_local global i32 0, align 4
@partdata_tbl = common dso_local global %struct.TYPE_7__* null, align 8
@ntdata_tbl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32, i32)* @idt_ntb_peer_msg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_ntb_peer_msg_write(%struct.ntb_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.idt_ntb_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %6, align 8
  %14 = call %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev* %13)
  store %struct.idt_ntb_dev* %14, %struct.idt_ntb_dev** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @IDT_MSG_CNT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %90

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %29 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %90

36:                                               ; preds = %27
  %37 = load i32, i32* @SWPxMSGCTL_REG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @SET_FIELD(i32 %37, i32 0, i32 %38)
  %40 = load i32, i32* @SWPxMSGCTL_PART, align 4
  %41 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %42 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SET_FIELD(i32 %40, i32 0, i32 %48)
  %50 = or i32 %39, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %52 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @partdata_tbl, align 8
  %61 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %62 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @idt_sw_write(%struct.idt_ntb_dev* %59, i32 %70, i32 %71)
  %73 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ntdata_tbl, i32 0, i32 0), align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %73, i32 %79, i32 %80)
  %82 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %10, align 8
  %83 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %36, %33, %21
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idt_sw_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
