; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-sysfs.c_rio_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-sysfs.c_rio_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.rio_dev = type { i32 }

@RIO_MAINT_SPACE_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @rio_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rio_write_config(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rio_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load %struct.kobject*, %struct.kobject** %9, align 8
  %22 = call i32 @kobj_to_dev(%struct.kobject* %21)
  %23 = call %struct.rio_dev* @to_rio_dev(i32 %22)
  store %struct.rio_dev* %23, %struct.rio_dev** %14, align 8
  %24 = load i64, i64* %13, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %16, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %17, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @RIO_MAINT_SPACE_SZ, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %195

33:                                               ; preds = %6
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* @RIO_MAINT_SPACE_SZ, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i64, i64* @RIO_MAINT_SPACE_SZ, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub nsw i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i64, i64* %12, align 8
  %48 = and i64 %47, 1
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %16, align 8
  %59 = sub nsw i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rio_write_config_8(%struct.rio_dev* %54, i64 %55, i32 %61)
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %53, %50, %46
  %68 = load i64, i64* %12, align 8
  %69 = and i64 %68, 3
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  %73 = icmp ugt i32 %72, 2
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i32*, i32** %17, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %16, align 8
  %78 = sub nsw i64 %76, %77
  %79 = add nsw i64 %78, 1
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %16, align 8
  %85 = sub nsw i64 %83, %84
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %18, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %18, align 4
  %91 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @rio_write_config_16(%struct.rio_dev* %91, i64 %92, i32 %93)
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %95, 2
  store i64 %96, i64* %12, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sub i32 %97, 2
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %74, %71, %67
  br label %100

100:                                              ; preds = %103, %99
  %101 = load i32, i32* %15, align 4
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %103, label %148

103:                                              ; preds = %100
  %104 = load i32*, i32** %17, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %16, align 8
  %107 = sub nsw i64 %105, %106
  %108 = add nsw i64 %107, 3
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %16, align 8
  %114 = sub nsw i64 %112, %113
  %115 = add nsw i64 %114, 2
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %19, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %19, align 4
  %121 = load i32*, i32** %17, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %16, align 8
  %124 = sub nsw i64 %122, %123
  %125 = add nsw i64 %124, 1
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 16
  %129 = load i32, i32* %19, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %19, align 4
  %131 = load i32*, i32** %17, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %16, align 8
  %134 = sub nsw i64 %132, %133
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 24
  %138 = load i32, i32* %19, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %19, align 4
  %140 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @rio_write_config_32(%struct.rio_dev* %140, i64 %141, i32 %142)
  %144 = load i64, i64* %12, align 8
  %145 = add nsw i64 %144, 4
  store i64 %145, i64* %12, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sub i32 %146, 4
  store i32 %147, i32* %15, align 4
  br label %100

148:                                              ; preds = %100
  %149 = load i32, i32* %15, align 4
  %150 = icmp uge i32 %149, 2
  br i1 %150, label %151, label %176

151:                                              ; preds = %148
  %152 = load i32*, i32** %17, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %16, align 8
  %155 = sub nsw i64 %153, %154
  %156 = add nsw i64 %155, 1
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %20, align 4
  %159 = load i32*, i32** %17, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %16, align 8
  %162 = sub nsw i64 %160, %161
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = load i32, i32* %20, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %20, align 4
  %168 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @rio_write_config_16(%struct.rio_dev* %168, i64 %169, i32 %170)
  %172 = load i64, i64* %12, align 8
  %173 = add nsw i64 %172, 2
  store i64 %173, i64* %12, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sub i32 %174, 2
  store i32 %175, i32* %15, align 4
  br label %176

176:                                              ; preds = %151, %148
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* %16, align 8
  %185 = sub nsw i64 %183, %184
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @rio_write_config_8(%struct.rio_dev* %180, i64 %181, i32 %187)
  %189 = load i64, i64* %12, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %12, align 8
  %191 = load i32, i32* %15, align 4
  %192 = add i32 %191, -1
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %179, %176
  %194 = load i64, i64* %13, align 8
  store i64 %194, i64* %7, align 8
  br label %195

195:                                              ; preds = %193, %32
  %196 = load i64, i64* %7, align 8
  ret i64 %196
}

declare dso_local %struct.rio_dev* @to_rio_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @rio_write_config_8(%struct.rio_dev*, i64, i32) #1

declare dso_local i32 @rio_write_config_16(%struct.rio_dev*, i64, i32) #1

declare dso_local i32 @rio_write_config_32(%struct.rio_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
