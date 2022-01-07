; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mbox_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mbox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32, i32 }
%struct.allegro_mbox = type { i32, i32, i64 }
%struct.mcu_msg_header = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"invalid head (0x%x): must be smaller than mailbox size (0x%zx)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"invalid message length: %zu bytes (maximum %zu bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"destination buffer too small: %zu bytes (need %zu bytes)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"read status message: type %s, body length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.allegro_mbox*, i8*, i64)* @allegro_mbox_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mbox_read(%struct.allegro_dev* %0, %struct.allegro_mbox* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.allegro_dev*, align 8
  %7 = alloca %struct.allegro_mbox*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mcu_msg_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %6, align 8
  store %struct.allegro_mbox* %1, %struct.allegro_mbox** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %15 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %18 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %16, i32 %19, i32* %11)
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %23 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %28 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %32 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @v4l2_err(i32* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %167

37:                                               ; preds = %4
  %38 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %39 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %42 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @regmap_bulk_read(i32 %40, i64 %46, i8* %47, i64 2)
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to %struct.mcu_msg_header*
  store %struct.mcu_msg_header* %50, %struct.mcu_msg_header** %10, align 8
  %51 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %52 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %59 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %37
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62, %37
  %67 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %68 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %67, i32 0, i32 0
  %69 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %70 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 8
  %74 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %75 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @v4l2_err(i32* %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %167

80:                                               ; preds = %62
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %9, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %87 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @v4l2_err(i32* %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %88, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %167

93:                                               ; preds = %80
  %94 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %95 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %99 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = zext i32 %100 to i64
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = add i64 %103, 8
  %105 = sub i64 %101, %104
  %106 = call i64 @min(i64 %97, i64 %105)
  store i64 %106, i64* %13, align 8
  %107 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %108 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %111 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = add i64 %115, 8
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr i8, i8* %117, i64 8
  %119 = load i64, i64* %13, align 8
  %120 = udiv i64 %119, 4
  %121 = call i32 @regmap_bulk_read(i32 %109, i64 %116, i8* %118, i64 %120)
  %122 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %123 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %126 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr i8, i8* %128, i64 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr i8, i8* %129, i64 %130
  %132 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %133 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %13, align 8
  %137 = sub i64 %135, %136
  %138 = udiv i64 %137, 4
  %139 = call i32 @regmap_bulk_read(i32 %124, i64 %127, i8* %131, i64 %138)
  %140 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %141 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %144 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add i32 %146, %147
  %149 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %150 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = urem i32 %148, %151
  %153 = call i32 @regmap_write(i32 %142, i32 %145, i32 %152)
  %154 = load i32, i32* @debug, align 4
  %155 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %156 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %155, i32 0, i32 0
  %157 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %158 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @msg_type_name(i32 %159)
  %161 = load %struct.mcu_msg_header*, %struct.mcu_msg_header** %10, align 8
  %162 = getelementptr inbounds %struct.mcu_msg_header, %struct.mcu_msg_header* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = call i32 @v4l2_dbg(i32 2, i32 %154, i32* %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %160, i64 %164)
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %93, %85, %66, %26
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i64, i8*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i64) #1

declare dso_local i32 @msg_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
