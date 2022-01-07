; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_NCR5380_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_NCR5380_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.NCR5380_hostdata = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i64, i64*, %struct.Scsi_Host* }

@NCR5380_main = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ncr5380_%d\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [114 x i8] c"%s, irq %d, io_port 0x%lx, base 0x%lx, can_queue %d, cmd_per_lun %d, sg_tablesize %d, this_id %d, flags { %s%s%s}\00", align 1
@FLAG_DMA_FIXUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"DMA_FIXUP \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FLAG_NO_PSEUDO_DMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"NO_PSEUDO_DMA \00", align 1
@FLAG_TOSHIBA_DELAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"TOSHIBA_DELAY \00", align 1
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@ICR_BASE = common dso_local global i32 0, align 4
@MODE_REG = common dso_local global i32 0, align 4
@MR_BASE = common dso_local global i32 0, align 4
@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@SELECT_ENABLE_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@NCR5380_REG_POLL_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @NCR5380_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_init(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.NCR5380_hostdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.NCR5380_hostdata* %11, %struct.NCR5380_hostdata** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  store i32 7, i32* %13, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %16 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %15, i32 0, i32 17
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %16, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %22 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %24 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %26 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %44, %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 128
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %34 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %40 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %53 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %52, i32 0, i32 16
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %63 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %62, i32 0, i32 15
  store i64 0, i64* %63, align 8
  %64 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %65 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %64, i32 0, i32 14
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %68 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %67, i32 0, i32 13
  store i32* null, i32** %68, align 8
  %69 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %70 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %69, i32 0, i32 12
  store i32* null, i32** %70, align 8
  %71 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %72 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %71, i32 0, i32 11
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %75 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %74, i32 0, i32 10
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %78 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %77, i32 0, i32 9
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %82 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %84 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %83, i32 0, i32 8
  %85 = load i32, i32* @NCR5380_main, align 4
  %86 = call i32 @INIT_WORK(i32* %84, i32 %85)
  %87 = load i32, i32* @WQ_UNBOUND, align 4
  %88 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %89, i32 1, i32 %92)
  %94 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %95 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %97 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %61
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %201

103:                                              ; preds = %61
  %104 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %105 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %113 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %116 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %119 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %122 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %125 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %128 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %131 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %134 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @FLAG_DMA_FIXUP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %141 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %142 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @FLAG_NO_PSEUDO_DMA, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %149 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %150 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @FLAG_TOSHIBA_DELAY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %157 = call i32 @snprintf(i32 %106, i32 4, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i8* %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i8* %140, i8* %148, i8* %156)
  %158 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %159 = load i32, i32* @ICR_BASE, align 4
  %160 = call i32 @NCR5380_write(i32 %158, i32 %159)
  %161 = load i32, i32* @MODE_REG, align 4
  %162 = load i32, i32* @MR_BASE, align 4
  %163 = call i32 @NCR5380_write(i32 %161, i32 %162)
  %164 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %165 = call i32 @NCR5380_write(i32 %164, i32 0)
  %166 = load i32, i32* @SELECT_ENABLE_REG, align 4
  %167 = call i32 @NCR5380_write(i32 %166, i32 0)
  store i32 0, i32* %7, align 4
  %168 = load i32, i32* @jiffies, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %173, %103
  %172 = call i32 (...) @cpu_relax()
  br label %173

173:                                              ; preds = %171
  %174 = load i64, i64* %8, align 8
  %175 = call i64 @time_is_after_jiffies(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %171, label %177

177:                                              ; preds = %173
  %178 = call i64 @msecs_to_jiffies(i32 256)
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %8, align 8
  br label %181

181:                                              ; preds = %187, %177
  %182 = load i32, i32* @STATUS_REG, align 4
  %183 = call i32 @NCR5380_read(i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  %186 = call i32 (...) @cpu_relax()
  br label %187

187:                                              ; preds = %181
  %188 = load i64, i64* %8, align 8
  %189 = call i64 @time_is_after_jiffies(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %181, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = sdiv i32 %192, 256
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %9, align 8
  %195 = load i64, i64* @NCR5380_REG_POLL_TIME, align 8
  %196 = load i64, i64* %9, align 8
  %197 = mul i64 %195, %196
  %198 = udiv i64 %197, 2
  %199 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %200 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %199, i32 0, i32 3
  store i64 %198, i64* %200, align 8
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %191, %100
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @NCR5380_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
