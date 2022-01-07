; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_mw_set_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_peer_mw_set_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.idt_ntb_bar* }
%struct.idt_ntb_bar = type { i32, i32, i32, i32 }
%struct.ntb_dev = type { i32 }
%struct.idt_ntb_dev = type { i32, i32, i32, %struct.TYPE_3__*, %struct.idt_mw_cfg* }
%struct.TYPE_3__ = type { i64 }
%struct.idt_mw_cfg = type { i64, i64, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IDT_MW_DIR = common dso_local global i64 0, align 8
@ntdata_tbl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BARSETUP_TPART = common dso_local global i32 0, align 4
@BARSETUP_TYPE = common dso_local global i32 0, align 4
@LUTOFFSET_INDEX = common dso_local global i32 0, align 4
@LUTOFFSET_BAR = common dso_local global i32 0, align 4
@LUTUDATA_PART = common dso_local global i32 0, align 4
@IDT_LUTUDATA_VALID = common dso_local global i32 0, align 4
@IDT_NT_LUTOFFSET = common dso_local global i32 0, align 4
@IDT_NT_LUTLDATA = common dso_local global i32 0, align 4
@IDT_NT_LUTMDATA = common dso_local global i32 0, align 4
@IDT_NT_LUTUDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32, i32, i64)* @idt_ntb_peer_mw_set_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_ntb_peer_mw_set_trans(%struct.ntb_dev* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntb_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.idt_ntb_dev*, align 8
  %13 = alloca %struct.idt_mw_cfg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.idt_ntb_bar*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load %struct.ntb_dev*, %struct.ntb_dev** %7, align 8
  %20 = call %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev* %19)
  store %struct.idt_ntb_dev* %20, %struct.idt_ntb_dev** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %25 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %204

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %37 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %204

44:                                               ; preds = %35
  %45 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %46 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %45, i32 0, i32 4
  %47 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %47, i64 %49
  store %struct.idt_mw_cfg* %50, %struct.idt_mw_cfg** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %54 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IS_ALIGNED(i64 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %204

61:                                               ; preds = %44
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %64 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @IS_ALIGNED(i64 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %71 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %61
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %204

77:                                               ; preds = %68
  %78 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %79 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IDT_MW_DIR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %154

83:                                               ; preds = %77
  %84 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ntdata_tbl, i32 0, i32 0), align 8
  %85 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %86 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %84, i64 %87
  store %struct.idt_ntb_bar* %88, %struct.idt_ntb_bar** %16, align 8
  %89 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %90 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %16, align 8
  %91 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %89, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* @BARSETUP_TPART, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %97 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @SET_FIELD(i32 %94, i32 %95, i64 %103)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %106 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %16, align 8
  %107 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %105, i32 %108, i32 %109)
  %111 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %112 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %16, align 8
  %113 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %111, i32 %114, i32 %115)
  %117 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %118 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %16, align 8
  %119 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = ashr i32 %121, 32
  %123 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %117, i32 %120, i32 %122)
  %124 = load %struct.ntb_dev*, %struct.ntb_dev** %7, align 8
  %125 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %128 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @pci_bus_address(i32 %126, i64 %129)
  %131 = load i64, i64* %11, align 8
  %132 = add nsw i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %17, align 4
  %134 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %135 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %16, align 8
  %136 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %134, i32 %137, i32 %138)
  %140 = load i32, i32* @BARSETUP_TYPE, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i64 @IS_FLD_SET(i32 %140, i32 %141, i32 64)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %83
  %145 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %146 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %16, align 8
  %147 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %146, i64 1
  %148 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %17, align 4
  %151 = ashr i32 %150, 32
  %152 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %145, i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %144, %83
  br label %203

154:                                              ; preds = %77
  %155 = load i32, i32* @LUTOFFSET_INDEX, align 4
  %156 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %157 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @SET_FIELD(i32 %155, i32 0, i64 %158)
  %160 = load i32, i32* @LUTOFFSET_BAR, align 4
  %161 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %13, align 8
  %162 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @SET_FIELD(i32 %160, i32 0, i64 %163)
  %165 = or i32 %159, %164
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* @LUTUDATA_PART, align 4
  %167 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %168 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %167, i32 0, i32 3
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @SET_FIELD(i32 %166, i32 0, i64 %174)
  %176 = load i32, i32* @IDT_LUTUDATA_VALID, align 4
  %177 = or i32 %175, %176
  store i32 %177, i32* %14, align 4
  %178 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %179 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %178, i32 0, i32 2
  %180 = load i64, i64* %18, align 8
  %181 = call i32 @spin_lock_irqsave(i32* %179, i64 %180)
  %182 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %183 = load i32, i32* @IDT_NT_LUTOFFSET, align 4
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %182, i32 %183, i32 %184)
  %186 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %187 = load i32, i32* @IDT_NT_LUTLDATA, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %186, i32 %187, i32 %188)
  %190 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %191 = load i32, i32* @IDT_NT_LUTMDATA, align 4
  %192 = load i32, i32* %10, align 4
  %193 = ashr i32 %192, 32
  %194 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %190, i32 %191, i32 %193)
  %195 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %196 = load i32, i32* @IDT_NT_LUTUDATA, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %195, i32 %196, i32 %197)
  %199 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %12, align 8
  %200 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %199, i32 0, i32 2
  %201 = load i64, i64* %18, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  br label %203

203:                                              ; preds = %154, %153
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %203, %74, %58, %41, %29
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i64) #1

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i64 @pci_bus_address(i32, i64) #1

declare dso_local i64 @IS_FLD_SET(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
