; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-sysfs.c_rio_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-sysfs.c_rio_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.rio_dev = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@RIO_MAINT_SPACE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @rio_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rio_read_config(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.rio_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %23 = load %struct.kobject*, %struct.kobject** %9, align 8
  %24 = call i32 @kobj_to_dev(%struct.kobject* %23)
  %25 = call %struct.rio_dev* @to_rio_dev(i32 %24)
  store %struct.rio_dev* %25, %struct.rio_dev** %14, align 8
  store i32 256, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %17, align 8
  %29 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %30 = call i64 @capable(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @RIO_MAINT_SPACE_SZ, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %32, %6
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 0, i64* %7, align 8
  br label %210

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  br label %56

53:                                               ; preds = %39
  %54 = load i64, i64* %13, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @rio_read_config_8(%struct.rio_dev* %64, i32 %65, i32* %18)
  %67 = load i32, i32* %18, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %63, %60, %56
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 3
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = icmp ugt i32 %83, 2
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  %86 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @rio_read_config_16(%struct.rio_dev* %86, i32 %87, i32* %19)
  %89 = load i32, i32* %19, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* %19, align 4
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %17, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sub i32 %101, %102
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add i32 %107, 2
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub i32 %109, 2
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %85, %82, %78
  br label %112

112:                                              ; preds = %115, %111
  %113 = load i32, i32* %15, align 4
  %114 = icmp ugt i32 %113, 3
  br i1 %114, label %115, label %161

115:                                              ; preds = %112
  %116 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @rio_read_config_32(%struct.rio_dev* %116, i32 %117, i32* %20)
  %119 = load i32, i32* %20, align 4
  %120 = ashr i32 %119, 24
  %121 = and i32 %120, 255
  %122 = load i32*, i32** %17, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sub i32 %123, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load i32, i32* %20, align 4
  %129 = ashr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub i32 %132, %133
  %135 = add i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  store i32 %130, i32* %137, align 4
  %138 = load i32, i32* %20, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 255
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sub i32 %142, %143
  %145 = add i32 %144, 2
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %141, i64 %146
  store i32 %140, i32* %147, align 4
  %148 = load i32, i32* %20, align 4
  %149 = and i32 %148, 255
  %150 = load i32*, i32** %17, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %16, align 4
  %153 = sub i32 %151, %152
  %154 = add i32 %153, 3
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  store i32 %149, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add i32 %157, 4
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sub i32 %159, 4
  store i32 %160, i32* %15, align 4
  br label %112

161:                                              ; preds = %112
  %162 = load i32, i32* %15, align 4
  %163 = icmp uge i32 %162, 2
  br i1 %163, label %164, label %190

164:                                              ; preds = %161
  %165 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @rio_read_config_16(%struct.rio_dev* %165, i32 %166, i32* %21)
  %168 = load i32, i32* %21, align 4
  %169 = ashr i32 %168, 8
  %170 = and i32 %169, 255
  %171 = load i32*, i32** %17, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %16, align 4
  %174 = sub i32 %172, %173
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  store i32 %170, i32* %176, align 4
  %177 = load i32, i32* %21, align 4
  %178 = and i32 %177, 255
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %16, align 4
  %182 = sub i32 %180, %181
  %183 = add i32 %182, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %178, i32* %185, align 4
  %186 = load i32, i32* %12, align 4
  %187 = add i32 %186, 2
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %15, align 4
  %189 = sub i32 %188, 2
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %164, %161
  %191 = load i32, i32* %15, align 4
  %192 = icmp ugt i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = load %struct.rio_dev*, %struct.rio_dev** %14, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @rio_read_config_8(%struct.rio_dev* %194, i32 %195, i32* %22)
  %197 = load i32, i32* %22, align 4
  %198 = load i32*, i32** %17, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %16, align 4
  %201 = sub i32 %199, %200
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %198, i64 %202
  store i32 %197, i32* %203, align 4
  %204 = load i32, i32* %12, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %15, align 4
  %207 = add i32 %206, -1
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %193, %190
  %209 = load i64, i64* %13, align 8
  store i64 %209, i64* %7, align 8
  br label %210

210:                                              ; preds = %208, %38
  %211 = load i64, i64* %7, align 8
  ret i64 %211
}

declare dso_local %struct.rio_dev* @to_rio_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @rio_read_config_8(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @rio_read_config_16(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
