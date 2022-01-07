; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, %struct.wilc_sdio*, i32 }
%struct.wilc_sdio = type { i32, i32, i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_cmd52 = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Fail cmd 52, enable csa...\0A\00", align 1
@WILC_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Fail cmd 52, set func 0 block size...\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Fail cmd 52, set IOE register...\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Fail cmd 52, get IOR register...\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Fail func 1 is not ready...\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Fail set func 1 block size...\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Fail cmd 52, set IEN register...\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Fail cmd read chip id...\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"chipid (%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"has_thrpt_enh3 = %d...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32)* @wilc_sdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_init(%struct.wilc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_func*, align 8
  %7 = alloca %struct.wilc_sdio*, align 8
  %8 = alloca %struct.sdio_cmd52, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.wilc*, %struct.wilc** %4, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.sdio_func* @dev_to_sdio_func(i32 %14)
  store %struct.sdio_func* %15, %struct.sdio_func** %6, align 8
  %16 = load %struct.wilc*, %struct.wilc** %4, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 1
  %18 = load %struct.wilc_sdio*, %struct.wilc_sdio** %17, align 8
  store %struct.wilc_sdio* %18, %struct.wilc_sdio** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.wilc*, %struct.wilc** %4, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wilc_sdio*, %struct.wilc_sdio** %7, align 8
  %26 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %2
  %28 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  store i32 256, i32* %31, align 8
  %32 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 3
  store i32 128, i32* %32, align 4
  %33 = load %struct.wilc*, %struct.wilc** %4, align 8
  %34 = call i32 @wilc_sdio_cmd52(%struct.wilc* %33, %struct.sdio_cmd52* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %155

41:                                               ; preds = %27
  %42 = load %struct.wilc*, %struct.wilc** %4, align 8
  %43 = load i32, i32* @WILC_SDIO_BLOCK_SIZE, align 4
  %44 = call i32 @wilc_sdio_set_func0_block_size(%struct.wilc* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %48 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %155

50:                                               ; preds = %41
  %51 = load i32, i32* @WILC_SDIO_BLOCK_SIZE, align 4
  %52 = load %struct.wilc_sdio*, %struct.wilc_sdio** %7, align 8
  %53 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  store i32 2, i32* %57, align 8
  %58 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 3
  store i32 2, i32* %58, align 4
  %59 = load %struct.wilc*, %struct.wilc** %4, align 8
  %60 = call i32 @wilc_sdio_cmd52(%struct.wilc* %59, %struct.sdio_cmd52* %8)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %65 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %155

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  store i32 3, i32* %71, align 8
  store i32 3, i32* %9, align 4
  br label %72

72:                                               ; preds = %88, %67
  %73 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 3
  store i32 0, i32* %73, align 4
  %74 = load %struct.wilc*, %struct.wilc** %4, align 8
  %75 = call i32 @wilc_sdio_cmd52(%struct.wilc* %74, %struct.sdio_cmd52* %8)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %80 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %155

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %92

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %9, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %72, label %92

92:                                               ; preds = %88, %86
  %93 = load i32, i32* %9, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %97 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %155

99:                                               ; preds = %92
  %100 = load %struct.wilc*, %struct.wilc** %4, align 8
  %101 = load i32, i32* @WILC_SDIO_BLOCK_SIZE, align 4
  %102 = call i32 @wilc_sdio_set_func1_block_size(%struct.wilc* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %106 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %105, i32 0, i32 0
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %155

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  store i32 4, i32* %112, align 8
  %113 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 3
  store i32 3, i32* %113, align 4
  %114 = load %struct.wilc*, %struct.wilc** %4, align 8
  %115 = call i32 @wilc_sdio_cmd52(%struct.wilc* %114, %struct.sdio_cmd52* %8)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %120 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %119, i32 0, i32 0
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %155

122:                                              ; preds = %108
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %154, label %125

125:                                              ; preds = %122
  %126 = load %struct.wilc*, %struct.wilc** %4, align 8
  %127 = call i32 @wilc_sdio_read_reg(%struct.wilc* %126, i32 4096, i32* %11)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %131 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %130, i32 0, i32 0
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %155

133:                                              ; preds = %125
  %134 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %135 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %134, i32 0, i32 0
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 4095
  %140 = icmp sgt i32 %139, 672
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load %struct.wilc_sdio*, %struct.wilc_sdio** %7, align 8
  %143 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %142, i32 0, i32 0
  store i32 1, i32* %143, align 4
  br label %147

144:                                              ; preds = %133
  %145 = load %struct.wilc_sdio*, %struct.wilc_sdio** %7, align 8
  %146 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %149 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %148, i32 0, i32 0
  %150 = load %struct.wilc_sdio*, %struct.wilc_sdio** %7, align 8
  %151 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_info(i32* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %147, %122
  store i32 1, i32* %3, align 4
  br label %156

155:                                              ; preds = %129, %118, %104, %95, %78, %63, %46, %37
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %154
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @wilc_sdio_cmd52(%struct.wilc*, %struct.sdio_cmd52*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @wilc_sdio_set_func0_block_size(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_sdio_set_func1_block_size(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_sdio_read_reg(%struct.wilc*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
