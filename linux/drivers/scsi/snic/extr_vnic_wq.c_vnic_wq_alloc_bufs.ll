; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_wq.c_vnic_wq_alloc_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_wq.c_vnic_wq_alloc_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { %struct.vnic_wq_buf**, %struct.vnic_wq_buf*, %struct.vnic_wq_buf*, %struct.TYPE_2__ }
%struct.vnic_wq_buf = type { i32, %struct.vnic_wq_buf*, i32* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@VNIC_WQ_BUF_BLK_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to alloc wq_bufs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VNIC_WQ_BUF_DFLT_BLK_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_wq*)* @vnic_wq_alloc_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_wq_alloc_bufs(%struct.vnic_wq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_wq*, align 8
  %4 = alloca %struct.vnic_wq_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnic_wq* %0, %struct.vnic_wq** %3, align 8
  %9 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %10 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @VNIC_WQ_BUF_BLKS_NEEDED(i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* @VNIC_WQ_BUF_BLK_SZ, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.vnic_wq_buf* @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %24 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %23, i32 0, i32 0
  %25 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %25, i64 %27
  store %struct.vnic_wq_buf* %22, %struct.vnic_wq_buf** %28, align 8
  %29 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %30 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %29, i32 0, i32 0
  %31 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %31, i64 %33
  %35 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %34, align 8
  %36 = icmp ne %struct.vnic_wq_buf* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %19
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %143

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %130, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %133

50:                                               ; preds = %46
  %51 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %52 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %51, i32 0, i32 0
  %53 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %53, i64 %55
  %57 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %56, align 8
  store %struct.vnic_wq_buf* %57, %struct.vnic_wq_buf** %4, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %126, %50
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @VNIC_WQ_BUF_DFLT_BLK_ENTRIES, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %129

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @VNIC_WQ_BUF_DFLT_BLK_ENTRIES, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %65, %66
  %68 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %69 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %71 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %76 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %80 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul i32 %78, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %74, i64 %83
  %85 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %86 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %88 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add i32 %89, 1
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %62
  %94 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %95 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %94, i32 0, i32 0
  %96 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %95, align 8
  %97 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %96, i64 0
  %98 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %97, align 8
  %99 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %100 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %99, i32 0, i32 1
  store %struct.vnic_wq_buf* %98, %struct.vnic_wq_buf** %100, align 8
  br label %129

101:                                              ; preds = %62
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  %104 = load i32, i32* @VNIC_WQ_BUF_DFLT_BLK_ENTRIES, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %108 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %107, i32 0, i32 0
  %109 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %109, i64 %112
  %114 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %113, align 8
  %115 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %116 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %115, i32 0, i32 1
  store %struct.vnic_wq_buf* %114, %struct.vnic_wq_buf** %116, align 8
  br label %124

117:                                              ; preds = %101
  %118 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %119 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %118, i64 1
  %120 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %121 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %120, i32 0, i32 1
  store %struct.vnic_wq_buf* %119, %struct.vnic_wq_buf** %121, align 8
  %122 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %4, align 8
  %123 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %122, i32 1
  store %struct.vnic_wq_buf* %123, %struct.vnic_wq_buf** %4, align 8
  br label %124

124:                                              ; preds = %117, %106
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %58

129:                                              ; preds = %93, %58
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %46

133:                                              ; preds = %46
  %134 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %135 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %134, i32 0, i32 0
  %136 = load %struct.vnic_wq_buf**, %struct.vnic_wq_buf*** %135, align 8
  %137 = getelementptr inbounds %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %136, i64 0
  %138 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %137, align 8
  %139 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %140 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %139, i32 0, i32 1
  store %struct.vnic_wq_buf* %138, %struct.vnic_wq_buf** %140, align 8
  %141 = load %struct.vnic_wq*, %struct.vnic_wq** %3, align 8
  %142 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %141, i32 0, i32 2
  store %struct.vnic_wq_buf* %138, %struct.vnic_wq_buf** %142, align 8
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %133, %37
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @VNIC_WQ_BUF_BLKS_NEEDED(i32) #1

declare dso_local %struct.vnic_wq_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
