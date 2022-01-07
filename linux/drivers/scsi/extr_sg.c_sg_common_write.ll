; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_common_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_common_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, i64, %struct.TYPE_18__, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i8 }
%struct.TYPE_20__ = type { i64, i8, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"sg_common_write:  scsi opcode=0x%02x, cmd_size=%d\0A\00", align 1
@SZ_256M = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sg_common_write: start_req err=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SG_FLAG_Q_AT_TAIL = common dso_local global i32 0, align 4
@sg_rq_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, i8*, i32, i32)* @sg_common_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_common_write(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %14, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %15, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i8 %23, i8* %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, %struct.TYPE_23__*, i8*, i32, ...) @sg_printk(i32 %41, %struct.TYPE_23__* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  %54 = call i32 @SCSI_LOG_TIMEOUT(i32 4, i32 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SZ_256M, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %5
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %155

63:                                               ; preds = %5
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @sg_start_req(%struct.TYPE_21__* %64, i8* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load i32, i32* @KERN_INFO, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i32, %struct.TYPE_23__*, i8*, i32, ...) @sg_printk(i32 %70, %struct.TYPE_23__* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i32 @SCSI_LOG_TIMEOUT(i32 1, i32 %75)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = call i32 @sg_finish_rem_req(%struct.TYPE_21__* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = call i32 @sg_remove_request(%struct.TYPE_22__* %79, %struct.TYPE_21__* %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %6, align 4
  br label %155

83:                                               ; preds = %63
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = call i64 @atomic_read(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = call i32 @scsi_req(%struct.TYPE_17__* %96)
  %98 = call i32 @scsi_req_free_cmd(i32 %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = call i32 @blk_put_request(%struct.TYPE_17__* %101)
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %104, align 8
  br label %105

105:                                              ; preds = %93, %88
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %107 = call i32 @sg_finish_rem_req(%struct.TYPE_21__* %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = call i32 @sg_remove_request(%struct.TYPE_22__* %108, %struct.TYPE_21__* %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %155

113:                                              ; preds = %83
  %114 = load i32, i32* @jiffies, align 4
  %115 = call i32 @jiffies_to_msecs(i32 %114)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i8, i8* %119, align 8
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load i32, i32* @SG_FLAG_Q_AT_TAIL, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  br label %132

131:                                              ; preds = %123, %113
  store i32 1, i32* %13, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = call i32 @kref_get(i32* %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @sg_rq_end_io, align 4
  %154 = call i32 @blk_execute_rq_nowait(i32 %145, i32 %148, %struct.TYPE_17__* %151, i32 %152, i32 %153)
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %132, %105, %69, %60
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @sg_printk(i32, %struct.TYPE_23__*, i8*, i32, ...) #1

declare dso_local i32 @sg_start_req(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @sg_finish_rem_req(%struct.TYPE_21__*) #1

declare dso_local i32 @sg_remove_request(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @scsi_req_free_cmd(i32) #1

declare dso_local i32 @scsi_req(%struct.TYPE_17__*) #1

declare dso_local i32 @blk_put_request(%struct.TYPE_17__*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32, %struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
