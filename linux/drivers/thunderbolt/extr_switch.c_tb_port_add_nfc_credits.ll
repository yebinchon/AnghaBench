; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_add_nfc_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_port_add_nfc_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@TB_PORT_NFC_CREDITS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"adding %d NFC credits to %lu\00", align 1
@TB_CFG_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_port_add_nfc_credits(%struct.tb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %11 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %9
  %18 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %19 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TB_PORT_NFC_CREDITS_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %30 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TB_PORT_NFC_CREDITS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @tb_port_dbg(%struct.tb_port* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34)
  %36 = load i32, i32* @TB_PORT_NFC_CREDITS_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %39 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %45 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 8
  %49 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %50 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %51 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* @TB_CFG_PORT, align 4
  %54 = call i32 @tb_port_write(%struct.tb_port* %49, i32* %52, i32 %53, i32 4, i32 1)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %17, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @tb_port_dbg(%struct.tb_port*, i8*, i32, i32) #1

declare dso_local i32 @tb_port_write(%struct.tb_port*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
