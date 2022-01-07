; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_transfer_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_transfer_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.WD33C93_hostdata = type { i32*, i32, i64, i32, i32, i32, i32, i64 (%struct.scsi_cmnd*, i32)*, i64 }

@WD_SYNCHRONOUS_TRANSFER = common dso_local global i32 0, align 4
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@L2_DATA = common dso_local global i64 0, align 8
@L2_BASIC = common dso_local global i64 0, align 8
@WD_COMMAND_PHASE = common dso_local global i32 0, align 4
@WD_CMD_SEL_ATN_XFER = common dso_local global i32 0, align 4
@S_RUNNING_LEVEL2 = common dso_local global i32 0, align 4
@WD_CMD_TRANS_INFO = common dso_local global i32 0, align 4
@D_DMA_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.scsi_cmnd*, i32)* @transfer_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_bytes(i32 %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.WD33C93_hostdata*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %16, %struct.WD33C93_hostdata** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %3
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = call %struct.TYPE_10__* @sg_next(%struct.TYPE_10__* %32)
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %36, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i64 @sg_virt(%struct.TYPE_10__* %54)
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %28, %22, %3
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %178

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @WD_SYNCHRONOUS_TRANSFER, align 4
  %69 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %70 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @write_wd33c93(i32 %67, i32 %68, i32 %78)
  %80 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %81 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %66
  %85 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %86 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %85, i32 0, i32 7
  %87 = load i64 (%struct.scsi_cmnd*, i32)*, i64 (%struct.scsi_cmnd*, i32)** %86, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i64 %87(%struct.scsi_cmnd* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %84, %66
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %105 = call i32 @transfer_pio(i32 %93, i32* %98, i64 %102, i32 %103, %struct.WD33C93_hostdata* %104)
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %8, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @read_wd33c93_count(i32 %110)
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub i64 %115, %119
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %120
  store i64 %125, i64* %123, align 8
  br label %178

126:                                              ; preds = %84
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @WD_CONTROL, align 4
  %129 = load i32, i32* @CTRL_IDI, align 4
  %130 = load i32, i32* @CTRL_EDI, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %133 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %131, %134
  %136 = call i32 @write_wd33c93(i32 %127, i32 %128, i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @write_wd33c93_count(i32 %137, i64 %141)
  %143 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %144 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @L2_DATA, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %126
  %149 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %150 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @L2_BASIC, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154, %126
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @WD_COMMAND_PHASE, align 4
  %163 = call i32 @write_wd33c93(i32 %161, i32 %162, i32 69)
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @WD_CMD_SEL_ATN_XFER, align 4
  %166 = call i32 @write_wd33c93_cmd(i32 %164, i32 %165)
  %167 = load i32, i32* @S_RUNNING_LEVEL2, align 4
  %168 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %169 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  br label %174

170:                                              ; preds = %154, %148
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @WD_CMD_TRANS_INFO, align 4
  %173 = call i32 @write_wd33c93_cmd(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %160
  %175 = load i32, i32* @D_DMA_RUNNING, align 4
  %176 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %177 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %65, %174, %92
  ret void
}

declare dso_local %struct.TYPE_10__* @sg_next(%struct.TYPE_10__*) #1

declare dso_local i64 @sg_virt(%struct.TYPE_10__*) #1

declare dso_local i32 @write_wd33c93(i32, i32, i32) #1

declare dso_local i32 @transfer_pio(i32, i32*, i64, i32, %struct.WD33C93_hostdata*) #1

declare dso_local i64 @read_wd33c93_count(i32) #1

declare dso_local i32 @write_wd33c93_count(i32, i64) #1

declare dso_local i32 @write_wd33c93_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
