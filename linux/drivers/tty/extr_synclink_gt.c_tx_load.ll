; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tx_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tx_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, %struct.slgt_desc*, %struct.TYPE_2__ }
%struct.slgt_desc = type { i16, i32 }
%struct.TYPE_2__ = type { i64 }

@DMABUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@MGSL_MODE_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*, i8*, i32)* @tx_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_load(%struct.slgt_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.slgt_desc*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @DMABUFSIZE, align 4
  %13 = call i64 @DIV_ROUND_UP(i32 %11, i32 %12)
  %14 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %15 = call i64 @free_tbuf_count(%struct.slgt_info* %14)
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %142

18:                                               ; preds = %3
  %19 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DBGDATA(%struct.slgt_info* %19, i8* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %112, %18
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 4
  %34 = load %struct.slgt_desc*, %struct.slgt_desc** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %34, i64 %36
  store %struct.slgt_desc* %37, %struct.slgt_desc** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DMABUFSIZE, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @DMABUFSIZE, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %8, align 2
  %48 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %49 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i16, i16* %8, align 2
  %53 = call i32 @memcpy(i32 %50, i8* %51, i16 zeroext %52)
  %54 = load i16, i16* %8, align 2
  %55 = zext i16 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i16, i16* %8, align 2
  %59 = zext i16 %58 to i32
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %45
  %66 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %67 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65, %45
  %73 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %74 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MGSL_MODE_RAW, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72, %65
  %80 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %81 = bitcast %struct.slgt_desc* %80 to i64*
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @set_desc_eof(i64 %82, i32 1)
  br label %89

84:                                               ; preds = %72
  %85 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %86 = bitcast %struct.slgt_desc* %85 to i64*
  %87 = load i64, i64* %86, align 4
  %88 = call i32 @set_desc_eof(i64 %87, i32 0)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %92 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %97 = load i16, i16* %8, align 2
  %98 = bitcast %struct.slgt_desc* %96 to i64*
  %99 = load i64, i64* %98, align 4
  %100 = call i32 @set_desc_count(i64 %99, i16 zeroext %97)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i16, i16* %8, align 2
  %103 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %104 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %103, i32 0, i32 0
  store i16 %102, i16* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %108 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %101
  br label %28

113:                                              ; preds = %28
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %116 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %118 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %117, i32 0, i32 4
  %119 = load %struct.slgt_desc*, %struct.slgt_desc** %118, align 8
  %120 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %121 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %119, i64 %123
  store %struct.slgt_desc* %124, %struct.slgt_desc** %10, align 8
  %125 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %126 = load %struct.slgt_desc*, %struct.slgt_desc** %10, align 8
  %127 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %126, i32 0, i32 0
  %128 = load i16, i16* %127, align 4
  %129 = bitcast %struct.slgt_desc* %125 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i32 @set_desc_count(i64 %130, i16 zeroext %128)
  %132 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %133 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %113
  %137 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %138 = call i32 @tx_start(%struct.slgt_info* %137)
  br label %139

139:                                              ; preds = %136, %113
  %140 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %141 = call i32 @update_tx_timer(%struct.slgt_info* %140)
  store i32 1, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %17
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @free_tbuf_count(%struct.slgt_info*) #1

declare dso_local i32 @DBGDATA(%struct.slgt_info*, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i16 zeroext) #1

declare dso_local i32 @set_desc_eof(i64, i32) #1

declare dso_local i32 @set_desc_count(i64, i16 zeroext) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @update_tx_timer(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
