; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_msg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_msg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ntb_dev = type { i32 }
%struct.idt_ntb_dev = type { i32* }

@IDT_MSG_CNT = common dso_local global i32 0, align 4
@ntdata_tbl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ntb_dev*, i32*, i32)* @idt_ntb_msg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idt_ntb_msg_read(%struct.ntb_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.idt_ntb_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %11 = call %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev* %10)
  store %struct.idt_ntb_dev* %11, %struct.idt_ntb_dev** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @IDT_MSG_CNT, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i64 -1, i64* %4, align 8
  br label %55

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ntdata_tbl, i32 0, i32 0), align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @idt_nt_read(%struct.idt_ntb_dev* %23, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %32 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = load i32*, i32** %6, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %22
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ntdata_tbl, i32 0, i32 0), align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @idt_nt_read(%struct.idt_ntb_dev* %47, i32 %53)
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %46, %18
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev*) #1

declare dso_local i64 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
