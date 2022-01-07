; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_mw_clear_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_mw_clear_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.idt_ntb_bar* }
%struct.idt_ntb_bar = type { i32, i32 }
%struct.ntb_dev = type { i32 }
%struct.idt_ntb_dev = type { i32, i32, i32, %struct.idt_mw_cfg* }
%struct.idt_mw_cfg = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IDT_MW_DIR = common dso_local global i64 0, align 8
@ntdata_tbl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BARSETUP_TYPE = common dso_local global i32 0, align 4
@LUTOFFSET_INDEX = common dso_local global i32 0, align 4
@LUTOFFSET_BAR = common dso_local global i32 0, align 4
@IDT_NT_LUTOFFSET = common dso_local global i32 0, align 4
@IDT_NT_LUTLDATA = common dso_local global i32 0, align 4
@IDT_NT_LUTMDATA = common dso_local global i32 0, align 4
@IDT_NT_LUTUDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32)* @idt_ntb_peer_mw_clear_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_ntb_peer_mw_clear_trans(%struct.ntb_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.idt_ntb_dev*, align 8
  %9 = alloca %struct.idt_mw_cfg*, align 8
  %10 = alloca %struct.idt_ntb_bar*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %15 = call %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev* %14)
  store %struct.idt_ntb_dev* %15, %struct.idt_ntb_dev** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %20 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %113

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %32 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %30
  %40 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %41 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %40, i32 0, i32 3
  %42 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %42, i64 %44
  store %struct.idt_mw_cfg* %45, %struct.idt_mw_cfg** %9, align 8
  %46 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %9, align 8
  %47 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IDT_MW_DIR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %39
  %52 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ntdata_tbl, i32 0, i32 0), align 8
  %53 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %9, align 8
  %54 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %52, i64 %55
  store %struct.idt_ntb_bar* %56, %struct.idt_ntb_bar** %10, align 8
  %57 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %58 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %10, align 8
  %59 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %63 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %10, align 8
  %64 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %62, i32 %65, i32 0)
  %67 = load i32, i32* @BARSETUP_TYPE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @IS_FLD_SET(i32 %67, i32 %68, i32 64)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %51
  %72 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %73 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %10, align 8
  %74 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %73, i64 1
  %75 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %72, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %71, %51
  br label %112

79:                                               ; preds = %39
  %80 = load i32, i32* @LUTOFFSET_INDEX, align 4
  %81 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %9, align 8
  %82 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @SET_FIELD(i32 %80, i32 0, i64 %83)
  %85 = load i32, i32* @LUTOFFSET_BAR, align 4
  %86 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %9, align 8
  %87 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @SET_FIELD(i32 %85, i32 0, i64 %88)
  %90 = or i32 %84, %89
  store i32 %90, i32* %13, align 4
  %91 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %92 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %91, i32 0, i32 2
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %96 = load i32, i32* @IDT_NT_LUTOFFSET, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %95, i32 %96, i32 %97)
  %99 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %100 = load i32, i32* @IDT_NT_LUTLDATA, align 4
  %101 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %99, i32 %100, i32 0)
  %102 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %103 = load i32, i32* @IDT_NT_LUTMDATA, align 4
  %104 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %102, i32 %103, i32 0)
  %105 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %106 = load i32, i32* @IDT_NT_LUTUDATA, align 4
  %107 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %105, i32 %106, i32 0)
  %108 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %109 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %108, i32 0, i32 2
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %79, %78
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %36, %24
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev*) #1

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i64 @IS_FLD_SET(i32, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
