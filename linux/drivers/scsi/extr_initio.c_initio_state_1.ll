; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64, %struct.target_control*, %struct.scsi_ctrl_blk* }
%struct.target_control = type { i32, i32 }
%struct.scsi_ctrl_blk = type { i32, i32, i32 }

@TUL_SConfig = common dso_local global i64 0, align 8
@MSG_OUT = common dso_local global i64 0, align 8
@TSC_EN_BUS_IN = common dso_local global i32 0, align 4
@TSC_HW_RESELECT = common dso_local global i32 0, align 4
@TUL_SCtrl1 = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8
@TCF_WDTR_DONE = common dso_local global i32 0, align 4
@TCF_NO_WDTR = common dso_local global i32 0, align 4
@MSG_EXTEND = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_NO_SYNC_NEGO = common dso_local global i32 0, align 4
@initio_rate_tbl = common dso_local global i32* null, align 8
@TCF_SCSI_RATE = common dso_local global i64 0, align 8
@MAX_OFFSET = common dso_local global i32 0, align 4
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TUL_SSignal = common dso_local global i64 0, align 8
@TSC_SET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_state_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_state_1(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.target_control*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 3
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %8, %struct.scsi_ctrl_blk** %4, align 8
  %9 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 2
  %11 = load %struct.target_control*, %struct.target_control** %10, align 8
  store %struct.target_control* %11, %struct.target_control** %5, align 8
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %14 = call i32 @initio_unlink_pend_scb(%struct.initio_host* %12, %struct.scsi_ctrl_blk* %13)
  %15 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %16 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %17 = call i32 @initio_append_busy_scb(%struct.initio_host* %15, %struct.scsi_ctrl_blk* %16)
  %18 = load %struct.target_control*, %struct.target_control** %5, align 8
  %19 = getelementptr inbounds %struct.target_control, %struct.target_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TUL_SConfig, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 %20, i64 %25)
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MSG_OUT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %184

32:                                               ; preds = %1
  %33 = load i32, i32* @TSC_EN_BUS_IN, align 4
  %34 = load i32, i32* @TSC_HW_RESELECT, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %37 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TUL_SCtrl1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %46 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TUL_SFifo, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  %51 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %32
  %56 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %60 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TUL_SFifo, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 %58, i64 %63)
  %65 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %69 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TUL_SFifo, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %55, %32
  %75 = load %struct.target_control*, %struct.target_control** %5, align 8
  %76 = getelementptr inbounds %struct.target_control, %struct.target_control* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TCF_WDTR_DONE, align 4
  %79 = load i32, i32* @TCF_NO_WDTR, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %74
  %84 = load i32, i32* @TCF_WDTR_DONE, align 4
  %85 = load %struct.target_control*, %struct.target_control** %5, align 8
  %86 = getelementptr inbounds %struct.target_control, %struct.target_control* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @MSG_EXTEND, align 4
  %90 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %91 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TUL_SFifo, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 %89, i64 %94)
  %96 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %97 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TUL_SFifo, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @outb(i32 2, i64 %100)
  %102 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %103 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TUL_SFifo, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 3, i64 %106)
  %108 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %109 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TUL_SFifo, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outb(i32 1, i64 %112)
  br label %171

114:                                              ; preds = %74
  %115 = load %struct.target_control*, %struct.target_control** %5, align 8
  %116 = getelementptr inbounds %struct.target_control, %struct.target_control* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @TCF_SYNC_DONE, align 4
  %119 = load i32, i32* @TCF_NO_SYNC_NEGO, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %170

123:                                              ; preds = %114
  %124 = load i32, i32* @TCF_SYNC_DONE, align 4
  %125 = load %struct.target_control*, %struct.target_control** %5, align 8
  %126 = getelementptr inbounds %struct.target_control, %struct.target_control* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @MSG_EXTEND, align 4
  %130 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %131 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TUL_SFifo, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @outb(i32 %129, i64 %134)
  %136 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %137 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TUL_SFifo, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outb(i32 3, i64 %140)
  %142 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %143 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TUL_SFifo, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outb(i32 1, i64 %146)
  %148 = load i32*, i32** @initio_rate_tbl, align 8
  %149 = load %struct.target_control*, %struct.target_control** %5, align 8
  %150 = getelementptr inbounds %struct.target_control, %struct.target_control* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @TCF_SCSI_RATE, align 8
  %154 = and i64 %152, %153
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %158 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TUL_SFifo, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @outb(i32 %156, i64 %161)
  %163 = load i32, i32* @MAX_OFFSET, align 4
  %164 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %165 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TUL_SFifo, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @outb(i32 %163, i64 %168)
  br label %170

170:                                              ; preds = %123, %114
  br label %171

171:                                              ; preds = %170, %83
  %172 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %173 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %174 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TUL_SCmd, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @outb(i32 %172, i64 %177)
  %179 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %180 = call i32 @wait_tulip(%struct.initio_host* %179)
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  store i32 -1, i32* %2, align 4
  br label %207

183:                                              ; preds = %171
  br label %184

184:                                              ; preds = %183, %1
  %185 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %186 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %187 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TUL_SCtrl0, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @outb(i32 %185, i64 %190)
  %192 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %193 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @TUL_SSignal, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @inb(i64 %196)
  %198 = load i32, i32* @TSC_SET_ACK, align 4
  %199 = or i32 %198, 7
  %200 = and i32 %197, %199
  %201 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %202 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @TUL_SSignal, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @outb(i32 %200, i64 %205)
  store i32 3, i32* %2, align 4
  br label %207

207:                                              ; preds = %184, %182
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @initio_unlink_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_append_busy_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
