; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_parse_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_parse_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3630a_platform_data = type { i8*, i8*, i64, i64, i64, i64, i32, i32 }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@LM3630A_BANK_0 = common dso_local global i64 0, align 8
@LM3630A_BANK_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ti,linear-mapping-mode\00", align 1
@LM3630A_SINK_0 = common dso_local global i64 0, align 8
@LM3630A_SINK_1 = common dso_local global i64 0, align 8
@LM3630A_LEDB_ENABLE_LINEAR = common dso_local global i32 0, align 4
@LM3630A_LEDB_ENABLE = common dso_local global i32 0, align 4
@LM3630A_LEDA_ENABLE_LINEAR = common dso_local global i32 0, align 4
@LM3630A_LEDA_ENABLE = common dso_local global i32 0, align 4
@LM3630A_LEDB_ON_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"default-brightness\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"max-brightness\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3630a_platform_data*, %struct.fwnode_handle*, i32*)* @lm3630a_parse_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_parse_bank(%struct.lm3630a_platform_data* %0, %struct.fwnode_handle* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3630a_platform_data*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.lm3630a_platform_data* %0, %struct.lm3630a_platform_data** %5, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %15 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %166

20:                                               ; preds = %3
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @LM3630A_BANK_0, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @LM3630A_BANK_1, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %166

31:                                               ; preds = %24
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @BIT(i64 %33)
  %35 = call i32 @lm3630a_parse_led_sources(%struct.fwnode_handle* %32, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %166

40:                                               ; preds = %31
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %166

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %55 = call i32 @fwnode_property_read_bool(%struct.fwnode_handle* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %13, align 4
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* @LM3630A_SINK_0, align 8
  %61 = call i32 @BIT(i64 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* @LM3630A_SINK_1, align 8
  %67 = call i32 @BIT(i64 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %166

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @LM3630A_LEDB_ENABLE_LINEAR, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @LM3630A_LEDB_ENABLE, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %83 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  br label %114

84:                                               ; preds = %49
  %85 = load i32, i32* %8, align 4
  %86 = load i64, i64* @LM3630A_SINK_0, align 8
  %87 = call i32 @BIT(i64 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %166

93:                                               ; preds = %84
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @LM3630A_LEDA_ENABLE_LINEAR, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @LM3630A_LEDA_ENABLE, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %103 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i64, i64* @LM3630A_SINK_1, align 8
  %106 = call i32 @BIT(i64 %105)
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i32, i32* @LM3630A_LEDB_ON_A, align 4
  %111 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %112 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %100
  br label %114

114:                                              ; preds = %113, %80
  %115 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %116 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %114
  %120 = load i64, i64* %11, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %125 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %130

126:                                              ; preds = %119
  %127 = load i8*, i8** %10, align 8
  %128 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %129 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %114
  %132 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %133 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %12)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %11, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %142 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %141, i32 0, i32 5
  store i64 %140, i64* %142, align 8
  br label %147

143:                                              ; preds = %136
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %146 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %131
  %149 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %150 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %12)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %148
  %154 = load i64, i64* %11, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i64, i64* %12, align 8
  %158 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %159 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  br label %164

160:                                              ; preds = %153
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %5, align 8
  %163 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %156
  br label %165

165:                                              ; preds = %164, %148
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %90, %70, %46, %38, %28, %18
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

declare dso_local i32 @lm3630a_parse_led_sources(%struct.fwnode_handle*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @fwnode_property_read_bool(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
