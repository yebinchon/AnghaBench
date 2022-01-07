; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_ciss_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_ciss_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.CommandList = type { i32, %struct.hpsa_scsi_dev_t*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.scsi_cmnd*, i32 }
%struct.TYPE_7__ = type { i32, i8*, i32*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.scsi_cmnd = type { i8*, i32, i32, i32* }
%struct.hpsa_scsi_dev_t = type { i64, i32* }

@CMD_SCSI = common dso_local global i32 0, align 4
@DIRECT_LOOKUP_SHIFT = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@ATTR_SIMPLE = common dso_local global i32 0, align 4
@XFER_WRITE = common dso_local global i32 0, align 4
@XFER_READ = common dso_local global i32 0, align 4
@XFER_NONE = common dso_local global i32 0, align 4
@XFER_RSVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown data direction: %d\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*, %struct.hpsa_scsi_dev_t*)* @hpsa_ciss_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_ciss_submit(%struct.ctlr_info* %0, %struct.CommandList* %1, %struct.scsi_cmnd* %2, %struct.hpsa_scsi_dev_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.CommandList* %1, %struct.CommandList** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store %struct.hpsa_scsi_dev_t* %3, %struct.hpsa_scsi_dev_t** %9, align 8
  %10 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %11 = bitcast %struct.CommandList* %10 to i8*
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @CMD_SCSI, align 4
  %15 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %16 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %18 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %19 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %18, i32 0, i32 4
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %19, align 8
  %20 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %21 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %24 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %30 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @memcpy(i32* %28, i32* %32, i32 8)
  %34 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %35 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DIRECT_LOOKUP_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = call i32 @cpu_to_le64(i32 %38)
  %40 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %41 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %44 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %49, 8
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %57 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %60 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i32* %62, i32* %65, i32 %68)
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %105 [
    i32 128, label %73
    i32 130, label %81
    i32 129, label %89
    i32 131, label %97
  ]

73:                                               ; preds = %4
  %74 = load i32, i32* @TYPE_CMD, align 4
  %75 = load i32, i32* @ATTR_SIMPLE, align 4
  %76 = load i32, i32* @XFER_WRITE, align 4
  %77 = call i8* @TYPE_ATTR_DIR(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %79 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  br label %115

81:                                               ; preds = %4
  %82 = load i32, i32* @TYPE_CMD, align 4
  %83 = load i32, i32* @ATTR_SIMPLE, align 4
  %84 = load i32, i32* @XFER_READ, align 4
  %85 = call i8* @TYPE_ATTR_DIR(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %87 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  br label %115

89:                                               ; preds = %4
  %90 = load i32, i32* @TYPE_CMD, align 4
  %91 = load i32, i32* @ATTR_SIMPLE, align 4
  %92 = load i32, i32* @XFER_NONE, align 4
  %93 = call i8* @TYPE_ATTR_DIR(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %95 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  br label %115

97:                                               ; preds = %4
  %98 = load i32, i32* @TYPE_CMD, align 4
  %99 = load i32, i32* @ATTR_SIMPLE, align 4
  %100 = load i32, i32* @XFER_RSVD, align 4
  %101 = call i8* @TYPE_ATTR_DIR(i32 %98, i32 %99, i32 %100)
  %102 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %103 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  br label %115

105:                                              ; preds = %4
  %106 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %107 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = call i32 (...) @BUG()
  br label %115

115:                                              ; preds = %105, %97, %89, %81, %73
  %116 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %117 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %119 = call i64 @hpsa_scatter_gather(%struct.ctlr_info* %116, %struct.CommandList* %117, %struct.scsi_cmnd* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %123 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %124 = call i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info* %122, %struct.CommandList* %123)
  %125 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %125, i32* %5, align 4
  br label %143

126:                                              ; preds = %115
  %127 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %128 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %133 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %134 = call i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info* %132, %struct.CommandList* %133)
  %135 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %135, i32* %5, align 4
  br label %143

136:                                              ; preds = %126
  %137 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %138 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %139 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %138, i32 0, i32 1
  store %struct.hpsa_scsi_dev_t* %137, %struct.hpsa_scsi_dev_t** %139, align 8
  %140 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %141 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %142 = call i32 @enqueue_cmd_and_start_io(%struct.ctlr_info* %140, %struct.CommandList* %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %136, %131, %121
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @TYPE_ATTR_DIR(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @hpsa_scatter_gather(%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*) #1

declare dso_local i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @enqueue_cmd_and_start_io(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
