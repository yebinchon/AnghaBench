; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_update_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.hpsa_scsi_dev_t = type { i64, i32, i32, i64, i32, i32, i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"updated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, %struct.hpsa_scsi_dev_t*)* @hpsa_scsi_update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_update_entry(%struct.ctlr_info* %0, i32 %1, %struct.hpsa_scsi_dev_t* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %12 = icmp sge i32 %10, %11
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ true, %3 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %18 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 8
  store i32 %19, i32* %27, align 4
  %28 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %29 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %32 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i32 %30, i32* %38, align 4
  %39 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %40 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %13
  %44 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %45 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %50 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  store i32 %51, i32* %59, align 8
  %60 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %61 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %64 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  store i32 %62, i32* %70, align 4
  br label %71

71:                                               ; preds = %48, %43, %13
  %72 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %73 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %78 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  store i32 %79, i32* %87, align 4
  %88 = call i32 (...) @wmb()
  br label %89

89:                                               ; preds = %76, %71
  %90 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %91 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %94 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 %97
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  store i32 %92, i32* %100, align 8
  %101 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %102 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %105 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 %108
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i64 %103, i64* %111, align 8
  %112 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %113 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %116 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %117, i64 %119
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i32 %114, i32* %122, align 4
  %123 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %124 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %127 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %128, i64 %130
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i32 %125, i32* %133, align 8
  %134 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %135 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %138 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %139, i64 %141
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i64 %136, i64* %144, align 8
  %145 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %146 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %89
  %150 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %151 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %152, i64 %154
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %149, %89
  %159 = load i32, i32* @KERN_INFO, align 4
  %160 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %161 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %162 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %163, i64 %165
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = call i32 @hpsa_show_dev_msg(i32 %159, %struct.ctlr_info* %160, %struct.TYPE_2__* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hpsa_show_dev_msg(i32, %struct.ctlr_info*, %struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
