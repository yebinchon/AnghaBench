; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_cuir_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_cuir_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dasd_conf_data* }
%struct.dasd_conf_data = type { i32, i32* }
%struct.dasd_cuir_message = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, %struct.dasd_cuir_message*)* @dasd_eckd_cuir_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_cuir_scope(%struct.dasd_device* %0, i32 %1, %struct.dasd_cuir_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_cuir_message*, align 8
  %8 = alloca %struct.dasd_conf_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dasd_conf_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dasd_cuir_message* %2, %struct.dasd_cuir_message** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %20 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %25 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %30 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %28, %33
  %35 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %36 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %23, %3
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %4, align 4
  br label %159

44:                                               ; preds = %23
  %45 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %48 = call %struct.dasd_conf_data* @dasd_eckd_get_ref_conf(%struct.dasd_device* %45, i32 %46, %struct.dasd_cuir_message* %47)
  store %struct.dasd_conf_data* %48, %struct.dasd_conf_data** %8, align 8
  %49 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %50 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ffs(i64 %51)
  %53 = sub nsw i32 8, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %8, align 8
  %55 = getelementptr inbounds %struct.dasd_conf_data, %struct.dasd_conf_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = bitcast i32* %59 to i8*
  store i8* %60, i8** %16, align 8
  %61 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %8, align 8
  %62 = getelementptr inbounds %struct.dasd_conf_data, %struct.dasd_conf_data* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %14, align 8
  %64 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %65 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %10, align 8
  %70 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %71 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %80 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %154, %44
  %89 = load i32, i32* %13, align 4
  %90 = icmp ult i32 %89, 8
  br i1 %90, label %91, label %157

91:                                               ; preds = %88
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %9, align 8
  %93 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %94 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %99, align 8
  store %struct.dasd_conf_data* %100, %struct.dasd_conf_data** %11, align 8
  %101 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %102 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ffs(i64 %103)
  %105 = sub nsw i32 8, %104
  store i32 %105, i32* %12, align 4
  %106 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %11, align 8
  %107 = getelementptr inbounds %struct.dasd_conf_data, %struct.dasd_conf_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = bitcast i32* %111 to i8*
  store i8* %112, i8** %17, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = call i64 @memcmp(i8* %113, i8* %114, i32 1)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %91
  br label %154

118:                                              ; preds = %91
  %119 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %11, align 8
  %120 = getelementptr inbounds %struct.dasd_conf_data, %struct.dasd_conf_data* %119, i32 0, i32 0
  %121 = bitcast i32* %120 to i8*
  store i8* %121, i8** %15, align 8
  br label %122

122:                                              ; preds = %142, %118
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %122
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @ffs(i64 %126)
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sub i32 31, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8*, i8** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sub i32 31, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = call i64 @memcmp(i8* %133, i8* %138, i32 1)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %145

142:                                              ; preds = %125
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @clear_bit(i32 %143, i64* %9)
  br label %122

145:                                              ; preds = %141, %122
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = ashr i32 128, %150
  %152 = load i32, i32* %18, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %149, %148, %117
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %88

157:                                              ; preds = %88
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %42
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.dasd_conf_data* @dasd_eckd_get_ref_conf(%struct.dasd_device*, i32, %struct.dasd_cuir_message*) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
