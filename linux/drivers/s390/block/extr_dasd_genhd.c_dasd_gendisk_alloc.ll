; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_genhd.c_dasd_gendisk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_genhd.c_dasd_gendisk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.gendisk*, i32, %struct.dasd_device* }
%struct.gendisk = type { i32, i32, i64, i32*, i32 }
%struct.dasd_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DASD_PER_MAJOR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DASD_PARTN_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DASD_MAJOR = common dso_local global i32 0, align 4
@dasd_device_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dasd\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_gendisk_alloc(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %7 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %7, i32 0, i32 2
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %5, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DASD_PER_MAJOR, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %163

18:                                               ; preds = %1
  %19 = load i32, i32* @DASD_PARTN_BITS, align 4
  %20 = shl i32 1, %19
  %21 = call %struct.gendisk* @alloc_disk(i32 %20)
  store %struct.gendisk* %21, %struct.gendisk** %4, align 8
  %22 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %23 = icmp ne %struct.gendisk* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %163

27:                                               ; preds = %18
  %28 = load i32, i32* @DASD_MAJOR, align 4
  %29 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %30 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DASD_PARTN_BITS, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %37 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 3
  store i32* @dasd_device_operations, i32** %39, align 8
  %40 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %41 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i64, i8*, ...) @sprintf(i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %6, align 4
  %44 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %45 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 25
  br i1 %47, label %48, label %109

48:                                               ; preds = %27
  %49 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %50 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 701
  br i1 %52, label %53, label %92

53:                                               ; preds = %48
  %54 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %55 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 18277
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %60 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %66 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 18278
  %69 = sdiv i32 %68, 17576
  %70 = srem i32 %69, 26
  %71 = add nsw i32 97, %70
  %72 = call i32 (i64, i8*, ...) @sprintf(i64 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %58, %53
  %76 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %83 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 702
  %86 = sdiv i32 %85, 676
  %87 = srem i32 %86, 26
  %88 = add nsw i32 97, %87
  %89 = call i32 (i64, i8*, ...) @sprintf(i64 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %75, %48
  %93 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %94 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %100 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 26
  %103 = sdiv i32 %102, 26
  %104 = srem i32 %103, 26
  %105 = add nsw i32 97, %104
  %106 = call i32 (i64, i8*, ...) @sprintf(i64 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %92, %27
  %110 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %111 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %117 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = srem i32 %118, 26
  %120 = add nsw i32 97, %119
  %121 = call i32 (i64, i8*, ...) @sprintf(i64 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %125 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %109
  %131 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %132 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %133 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %132, i32 0, i32 3
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130, %109
  %137 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %138 = call i32 @set_disk_ro(%struct.gendisk* %137, i32 1)
  br label %139

139:                                              ; preds = %136, %130
  %140 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %141 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %142 = call i32 @dasd_add_link_to_gendisk(%struct.gendisk* %140, %struct.dasd_device* %141)
  %143 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %144 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %147 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %149 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %150 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %149, i32 0, i32 0
  store %struct.gendisk* %148, %struct.gendisk** %150, align 8
  %151 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %152 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %151, i32 0, i32 0
  %153 = load %struct.gendisk*, %struct.gendisk** %152, align 8
  %154 = call i32 @set_capacity(%struct.gendisk* %153, i32 0)
  %155 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %156 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %155, i32 0, i32 2
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %160 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %159, i32 0, i32 0
  %161 = load %struct.gendisk*, %struct.gendisk** %160, align 8
  %162 = call i32 @device_add_disk(i32* %158, %struct.gendisk* %161, i32* null)
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %139, %24, %15
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @sprintf(i64, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_disk_ro(%struct.gendisk*, i32) #1

declare dso_local i32 @dasd_add_link_to_gendisk(%struct.gendisk*, %struct.dasd_device*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @device_add_disk(i32*, %struct.gendisk*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
