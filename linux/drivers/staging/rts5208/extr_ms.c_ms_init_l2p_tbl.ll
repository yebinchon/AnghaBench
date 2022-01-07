; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_init_l2p_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_init_l2p_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32*, i32, i64, i64, i64, i32*, i32*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"ms_card->segment_cnt = %d\0A\00", align 1
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"defective block count of segment %d is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_init_l2p_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_init_l2p_tbl(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 0
  store %struct.ms_info* %15, %struct.ms_info** %4, align 8
  %16 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %17 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 9
  %20 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %21 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = call i32 @rtsx_dev(%struct.rtsx_chip* %22)
  %24 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %25 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %29 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_3__* @vzalloc(i32 %34)
  %36 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %37 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %36, i32 0, i32 2
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %39 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %43, i32* %2, align 4
  br label %193

44:                                               ; preds = %1
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %46 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %47 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ms_read_page(%struct.rtsx_chip* %45, i32 %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @STATUS_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %185

54:                                               ; preds = %44
  %55 = load i32, i32* @PPBUF_BASE2, align 4
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %115, %54
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %59 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 9
  %62 = mul nsw i32 %61, 10
  %63 = add nsw i32 %62, 1
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %118

65:                                               ; preds = %56
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = call i32 @rtsx_read_register(%struct.rtsx_chip* %66, i32 %67, i32* %11)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @STATUS_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %185

74:                                               ; preds = %65
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = call i32 @rtsx_read_register(%struct.rtsx_chip* %75, i32 %76, i32* %12)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %185

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 65535
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %118

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = sdiv i32 %92, 512
  store i32 %93, i32* %7, align 4
  %94 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %95 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %105 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %103, i32* %114, align 4
  br label %115

115:                                              ; preds = %91
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %56

118:                                              ; preds = %90, %56
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %180, %118
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %122 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %183

125:                                              ; preds = %119
  %126 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %127 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %126, i32 0, i32 2
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  store i64 0, i64* %132, align 8
  %133 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %134 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 6
  store i32* null, i32** %139, align 8
  %140 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %141 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %140, i32 0, i32 2
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  store i32* null, i32** %146, align 8
  %147 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %148 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %147, i32 0, i32 2
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %155 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %154, i32 0, i32 2
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %162 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %161, i32 0, i32 2
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %169 = call i32 @rtsx_dev(%struct.rtsx_chip* %168)
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %172 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %171, i32 0, i32 2
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %178)
  br label %180

180:                                              ; preds = %125
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %119

183:                                              ; preds = %119
  %184 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %184, i32* %2, align 4
  br label %193

185:                                              ; preds = %82, %73, %53
  %186 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %187 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %186, i32 0, i32 2
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = call i32 @vfree(%struct.TYPE_3__* %188)
  %190 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %191 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %190, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %191, align 8
  %192 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %185, %183, %42
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local %struct.TYPE_3__* @vzalloc(i32) #1

declare dso_local i32 @ms_read_page(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @vfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
