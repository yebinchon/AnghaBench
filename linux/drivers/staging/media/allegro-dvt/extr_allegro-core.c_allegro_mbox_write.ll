; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mbox_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mbox_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32, i32 }
%struct.allegro_mbox = type { i64, i32, i32, i64 }
%struct.mcu_msg_header = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"message (%zu bytes) to large for mailbox (%zu bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"invalid message length: %u bytes (expected %zu bytes)\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"write command message: type %s, body length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"invalid tail (0x%x): must be smaller than mailbox size (0x%zx)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.allegro_mbox*, i8*, i64)* @allegro_mbox_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mbox_write(%struct.allegro_dev* %0, %struct.allegro_mbox* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.allegro_dev*, align 8
  %7 = alloca %struct.allegro_mbox*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mcu_msg_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %6, align 8
  store %struct.allegro_mbox* %1, %struct.allegro_mbox** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mcu_msg_header*
  store %struct.mcu_msg_header* %15, %struct.mcu_msg_header** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %153

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %24 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %29 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %33 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @v4l2_err(i32* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %153

38:                                               ; preds = %21
  %39 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %40 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, 16
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %47 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %46, i32 0, i32 1
  %48 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %49 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 16
  %54 = call i32 @v4l2_err(i32* %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %153

57:                                               ; preds = %38
  %58 = load i32, i32* @debug, align 4
  %59 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %60 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %59, i32 0, i32 1
  %61 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %62 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @msg_type_name(i32 %63)
  %65 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %66 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @v4l2_dbg(i32 2, i32 %58, i32* %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %71 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %74 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %77 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @regmap_read(i32 %75, i32 %78, i32* %11)
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %83 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %57
  %87 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %88 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %91 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @v4l2_err(i32* %88, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %89, i64 %92)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %148

96:                                               ; preds = %57
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %99 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = sub i64 %100, %102
  %104 = call i64 @min(i64 %97, i64 %103)
  store i64 %104, i64* %12, align 8
  %105 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %106 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %109 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %12, align 8
  %116 = udiv i64 %115, 4
  %117 = call i32 @regmap_bulk_write(i32 %107, i64 %113, i8* %114, i64 %116)
  %118 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %119 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %122 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr i8, i8* %124, i64 %125
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %12, align 8
  %129 = sub i64 %127, %128
  %130 = udiv i64 %129, 4
  %131 = call i32 @regmap_bulk_write(i32 %120, i64 %123, i8* %126, i64 %130)
  %132 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %133 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %136 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %139, %140
  %142 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %143 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = urem i64 %141, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @regmap_write(i32 %134, i32 %137, i32 %146)
  br label %148

148:                                              ; preds = %96, %86
  %149 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %150 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %149, i32 0, i32 1
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %148, %45, %27, %18
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @msg_type_name(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i8*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
