; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_up_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_up_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_rx = type { i32, i32, i32 (i32*, i32, i32, i32, i32)*, i64, %struct.mux_dev* }
%struct.mux_dev = type { i32 }
%struct.mux_pkt_header = type { i32*, i32, i32, i32 }

@TO_HOST_INVALID_PACKET = common dso_local global i32 0, align 4
@START_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid START_FLAG %x\0A\00", align 1
@MUX_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid payload : %d %d %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid index %d\0A\00", align 1
@RECV_PACKET_PROCESS_CONTINUE = common dso_local global i32 0, align 4
@TO_HOST_BUFFER_REQUEST_FAIL = common dso_local global i32 0, align 4
@RECV_PACKET_PROCESS_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_rx*)* @up_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @up_to_host(%struct.mux_rx* %0) #0 {
  %2 = alloca %struct.mux_rx*, align 8
  %3 = alloca %struct.mux_dev*, align 8
  %4 = alloca %struct.mux_pkt_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mux_rx* %0, %struct.mux_rx** %2, align 8
  %13 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %14 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %13, i32 0, i32 4
  %15 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  store %struct.mux_dev* %15, %struct.mux_dev** %3, align 8
  %16 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %17 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @TO_HOST_INVALID_PACKET, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %21 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %1, %116
  %24 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %25 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = inttoptr i64 %29 to %struct.mux_pkt_header*
  store %struct.mux_pkt_header* %30, %struct.mux_pkt_header** %4, align 8
  %31 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %4, align 8
  %32 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @__le32_to_cpu(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %4, align 8
  %36 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le32_to_cpu(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %4, align 8
  %40 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call zeroext i16 @__le16_to_cpu(i32 %41)
  store i16 %42, i16* %7, align 2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @START_FLAG, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %117

49:                                               ; preds = %23
  %50 = load i32, i32* @MUX_HEADER_SIZE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %50, %51
  %53 = call i32 @ALIGN(i32 %52, i32 4)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i16, i16* %7, align 2
  %63 = zext i16 %62 to i32
  %64 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %63)
  br label %117

65:                                               ; preds = %49
  %66 = load i16, i16* %7, align 2
  %67 = call i32 @packet_type_to_index(i16 zeroext %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %117

73:                                               ; preds = %65
  %74 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %75 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %74, i32 0, i32 2
  %76 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %75, align 8
  %77 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %4, align 8
  %78 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.mux_dev*, %struct.mux_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RECV_PACKET_PROCESS_CONTINUE, align 4
  %86 = call i32 %76(i32* %79, i32 %80, i32 %81, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @TO_HOST_BUFFER_REQUEST_FAIL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %73
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %93 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %117

96:                                               ; preds = %73
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* @MUX_HEADER_SIZE, align 4
  %104 = add i32 %103, 2
  %105 = icmp ule i32 %102, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %96
  %107 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %108 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %107, i32 0, i32 2
  %109 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.mux_dev*, %struct.mux_dev** %3, align 8
  %112 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RECV_PACKET_PROCESS_COMPLETE, align 4
  %115 = call i32 %109(i32* null, i32 0, i32 %110, i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  br label %117

116:                                              ; preds = %96
  br label %23

117:                                              ; preds = %106, %90, %70, %59, %46
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local zeroext i16 @__le16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @packet_type_to_index(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
