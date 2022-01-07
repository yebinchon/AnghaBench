; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.idt_ntb_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8, i32 }

@portdata_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@IDT_SWPORTxSTS_LINKUP = common dso_local global i32 0, align 4
@IDT_PCICMDSTS_BME = common dso_local global i32 0, align 4
@IDT_NTCTL_CPEN = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLADDR = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLDATA = common dso_local global i32 0, align 4
@IDT_NTMTBLDATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*, i32)* @idt_ntb_peer_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_ntb_peer_link_is_up(%struct.idt_ntb_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt_ntb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %10 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 4
  store i8 %16, i8* %7, align 1
  %17 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @portdata_tbl, align 8
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %17, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IDT_SWPORTxSTS_LINKUP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

30:                                               ; preds = %2
  %31 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @portdata_tbl, align 8
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %31, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IDT_PCICMDSTS_BME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %88

44:                                               ; preds = %30
  %45 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @portdata_tbl, align 8
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %45, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IDT_NTCTL_CPEN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %88

58:                                               ; preds = %44
  %59 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %60 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %64 = load i32, i32* @IDT_NT_NTMTBLADDR, align 4
  %65 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %66 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %63, i32 %64, i32 %72)
  %74 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %75 = load i32, i32* @IDT_NT_NTMTBLDATA, align 4
  %76 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %78 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @IDT_NTMTBLDATA_VALID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %58, %57, %43, %29
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @idt_sw_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
