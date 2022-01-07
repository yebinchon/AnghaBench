; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64, %struct.target_control*, %struct.scsi_ctrl_blk* }
%struct.target_control = type { i32 }
%struct.scsi_ctrl_blk = type { i32*, i32, i64 }

@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_NO_SYNC_NEGO = common dso_local global i32 0, align 4
@MSG_NOP = common dso_local global i32 0, align 4
@MSG_EXTEND = common dso_local global i32 0, align 4
@initio_rate_tbl = common dso_local global i32* null, align 8
@TCF_SCSI_RATE = common dso_local global i64 0, align 8
@MAX_OFFSET = common dso_local global i32 0, align 4
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TUL_SSignal = common dso_local global i64 0, align 8
@TSC_SET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_state_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_state_3(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.target_control*, align 8
  %6 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %7 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %8 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %7, i32 0, i32 3
  %9 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %8, align 8
  store %struct.scsi_ctrl_blk* %9, %struct.scsi_ctrl_blk** %4, align 8
  %10 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %11 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %10, i32 0, i32 2
  %12 = load %struct.target_control*, %struct.target_control** %11, align 8
  store %struct.target_control* %12, %struct.target_control** %5, align 8
  br label %13

13:                                               ; preds = %191, %1
  %14 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %15 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %188 [
    i32 131, label %17
    i32 130, label %63
    i32 128, label %71
    i32 129, label %77
  ]

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %34 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TUL_SFifo, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %44 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %45 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TUL_SCmd, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb(i32 %43, i64 %48)
  %50 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %51 = call i32 @wait_tulip(%struct.initio_host* %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %192

54:                                               ; preds = %42
  %55 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %56 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 131
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %61 = call i32 @initio_bad_seq(%struct.initio_host* %60)
  store i32 %61, i32* %2, align 4
  br label %192

62:                                               ; preds = %54
  store i32 4, i32* %2, align 4
  br label %192

63:                                               ; preds = %13
  %64 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %64, i32 0, i32 1
  store i32 3, i32* %65, align 8
  %66 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %67 = call i32 @initio_msgin(%struct.initio_host* %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %2, align 4
  br label %192

70:                                               ; preds = %63
  br label %191

71:                                               ; preds = %13
  %72 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %73 = call i32 @initio_status_msg(%struct.initio_host* %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %192

76:                                               ; preds = %71
  br label %191

77:                                               ; preds = %13
  %78 = load %struct.target_control*, %struct.target_control** %5, align 8
  %79 = getelementptr inbounds %struct.target_control, %struct.target_control* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TCF_SYNC_DONE, align 4
  %82 = load i32, i32* @TCF_NO_SYNC_NEGO, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %77
  %87 = load i32, i32* @MSG_NOP, align 4
  %88 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %89 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TUL_SFifo, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %87, i64 %92)
  %94 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %95 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %96 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TUL_SCmd, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 %94, i64 %99)
  %101 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %102 = call i32 @wait_tulip(%struct.initio_host* %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  store i32 -1, i32* %2, align 4
  br label %192

105:                                              ; preds = %86
  br label %187

106:                                              ; preds = %77
  %107 = load i32, i32* @TCF_SYNC_DONE, align 4
  %108 = load %struct.target_control*, %struct.target_control** %5, align 8
  %109 = getelementptr inbounds %struct.target_control, %struct.target_control* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @MSG_EXTEND, align 4
  %113 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %114 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TUL_SFifo, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outb(i32 %112, i64 %117)
  %119 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %120 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TUL_SFifo, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outb(i32 3, i64 %123)
  %125 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %126 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @TUL_SFifo, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outb(i32 1, i64 %129)
  %131 = load i32*, i32** @initio_rate_tbl, align 8
  %132 = load %struct.target_control*, %struct.target_control** %5, align 8
  %133 = getelementptr inbounds %struct.target_control, %struct.target_control* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @TCF_SCSI_RATE, align 8
  %137 = and i64 %135, %136
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %141 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TUL_SFifo, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outb(i32 %139, i64 %144)
  %146 = load i32, i32* @MAX_OFFSET, align 4
  %147 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %148 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TUL_SFifo, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outb(i32 %146, i64 %151)
  %153 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %154 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %155 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TUL_SCmd, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outb(i32 %153, i64 %158)
  %160 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %161 = call i32 @wait_tulip(%struct.initio_host* %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %106
  store i32 -1, i32* %2, align 4
  br label %192

164:                                              ; preds = %106
  %165 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %166 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %167 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TUL_SCtrl0, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @outb(i32 %165, i64 %170)
  %172 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %173 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TUL_SSignal, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @inb(i64 %176)
  %178 = load i32, i32* @TSC_SET_ACK, align 4
  %179 = or i32 %178, 7
  %180 = and i32 %177, %179
  %181 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %182 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TUL_SSignal, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i32 %180, i64 %185)
  br label %187

187:                                              ; preds = %164, %105
  br label %191

188:                                              ; preds = %13
  %189 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %190 = call i32 @initio_bad_seq(%struct.initio_host* %189)
  store i32 %190, i32* %2, align 4
  br label %192

191:                                              ; preds = %187, %76, %70
  br label %13

192:                                              ; preds = %188, %163, %104, %75, %69, %62, %59, %53
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

declare dso_local i32 @initio_msgin(%struct.initio_host*) #1

declare dso_local i32 @initio_status_msg(%struct.initio_host*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
