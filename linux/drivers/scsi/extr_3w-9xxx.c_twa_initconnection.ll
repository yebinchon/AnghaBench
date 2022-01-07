; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_initconnection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_initconnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }

@TW_OP_INIT_CONNECTION = common dso_local global i32 0, align 4
@TW_EXTENDED_INIT_CONNECT = common dso_local global i32 0, align 4
@TW_INIT_COMMAND_PACKET_SIZE_EXTENDED = common dso_local global i32 0, align 4
@TW_INIT_COMMAND_PACKET_SIZE = common dso_local global i32 0, align 4
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"No valid response during init connection\00", align 1
@TW_S_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, i16, i16, i16, i16, i16*, i16*, i16*, i16*, i32*)* @twa_initconnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_initconnection(%struct.TYPE_15__* %0, i32 %1, i32 %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6, i16* %7, i16* %8, i16* %9, i16* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16*, align 8
  %21 = alloca i16*, align 8
  %22 = alloca i16*, align 8
  %23 = alloca i16*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i16 %3, i16* %16, align 2
  store i16 %4, i16* %17, align 2
  store i16 %5, i16* %18, align 2
  store i16 %6, i16* %19, align 2
  store i16* %7, i16** %20, align 8
  store i16* %8, i16** %21, align 8
  store i16* %9, i16** %22, align 8
  store i16* %10, i16** %23, align 8
  store i32* %11, i32** %24, align 8
  store i32 0, i32* %27, align 4
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %30, align 8
  %32 = load i32, i32* %27, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %25, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %37 = call i32 @memset(%struct.TYPE_16__* %36, i32 0, i32 8)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 128, i32* %41, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %26, align 8
  %46 = load i32, i32* @TW_OP_INIT_CONNECTION, align 4
  %47 = call i32 @TW_OPRES_IN(i32 0, i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %27, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = trunc i32 %53 to i16
  %55 = call i8* @cpu_to_le16(i16 zeroext %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpu_to_le32(i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @TW_EXTENDED_INIT_CONNECT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %12
  %75 = load i32, i32* @TW_INIT_COMMAND_PACKET_SIZE_EXTENDED, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load i16, i16* %16, align 2
  %79 = call i8* @cpu_to_le16(i16 zeroext %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load i16, i16* %17, align 2
  %83 = call i8* @cpu_to_le16(i16 zeroext %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load i16, i16* %18, align 2
  %87 = call i8* @cpu_to_le16(i16 zeroext %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i16, i16* %19, align 2
  %91 = call i8* @cpu_to_le16(i16 zeroext %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  br label %98

94:                                               ; preds = %12
  %95 = load i32, i32* @TW_INIT_COMMAND_PACKET_SIZE, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %74
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %100 = load i32, i32* %27, align 4
  %101 = call i32 @twa_post_command_packet(%struct.TYPE_15__* %99, i32 %100, i32 1)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = load i32, i32* %27, align 4
  %104 = call i64 @twa_poll_response(%struct.TYPE_15__* %102, i32 %103, i32 30)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TW_DRIVER, align 4
  %111 = call i32 @TW_PRINTK(i32 %109, i32 %110, i32 21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %144

112:                                              ; preds = %98
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @TW_EXTENDED_INIT_CONNECT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %112
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = call zeroext i16 @le16_to_cpu(i8* %120)
  %122 = load i16*, i16** %20, align 8
  store i16 %121, i16* %122, align 2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call zeroext i16 @le16_to_cpu(i8* %125)
  %127 = load i16*, i16** %21, align 8
  store i16 %126, i16* %127, align 2
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = call zeroext i16 @le16_to_cpu(i8* %130)
  %132 = load i16*, i16** %22, align 8
  store i16 %131, i16* %132, align 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call zeroext i16 @le16_to_cpu(i8* %135)
  %137 = load i16*, i16** %23, align 8
  store i16 %136, i16* %137, align 2
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @le32_to_cpu(i32 %140)
  %142 = load i32*, i32** %24, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %117, %112
  store i32 0, i32* %28, align 4
  br label %144

144:                                              ; preds = %143, %106
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @TW_S_INITIAL, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %27, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load i32, i32* %28, align 4
  ret i32 %156
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @TW_OPRES_IN(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @twa_post_command_packet(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @twa_poll_response(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local zeroext i16 @le16_to_cpu(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
