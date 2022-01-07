; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_tx_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_tx_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (i32, i64)* }
%struct.wsm_hdr = type { i32, i32 }

@EFFECTIVE_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Write aligned len: %zu\0A\00", align 1
@WSM_TX_SEQ_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"tx blew up, len %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"--> \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32*, i32*)* @cw1200_bh_tx_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_bh_tx_helper(%struct.cw1200_common* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wsm_hdr*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %13 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %18 = call i32 @cw1200_device_wakeup(%struct.cw1200_common* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  store i32 1, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %153

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  store i32 1, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %153

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %38 = call i32 @wsm_alloc_tx_buffer(%struct.cw1200_common* %37)
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @wsm_get_tx(%struct.cw1200_common* %39, i32** %9, i64* %8, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %46 = call i32 @wsm_release_tx_buffer(%struct.cw1200_common* %45, i32 1)
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %153

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %153

55:                                               ; preds = %36
  %56 = load i32*, i32** %9, align 8
  %57 = bitcast i32* %56 to %struct.wsm_hdr*
  store %struct.wsm_hdr* %57, %struct.wsm_hdr** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %58, 8
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.wsm_hdr*, %struct.wsm_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @__le16_to_cpu(i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %71 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %70, i32 0, i32 5
  %72 = call i32 @atomic_add(i32 1, i32* %71)
  %73 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %74 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64 (i32, i64)*, i64 (i32, i64)** %76, align 8
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %79 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i64 %77(i32 %80, i64 %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @EFFECTIVE_BUF_SIZE, align 8
  %85 = icmp ugt i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @WARN_ON_ONCE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %55
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %89, %55
  %93 = load i32, i32* @WSM_TX_SEQ_MAX, align 4
  %94 = call i32 @WSM_TX_SEQ(i32 %93)
  %95 = xor i32 65535, %94
  %96 = call i32 @__cpu_to_le16(i32 %95)
  %97 = load %struct.wsm_hdr*, %struct.wsm_hdr** %11, align 8
  %98 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %102 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @WSM_TX_SEQ(i32 %103)
  %105 = call i32 @__cpu_to_le16(i32 %104)
  %106 = load %struct.wsm_hdr*, %struct.wsm_hdr** %11, align 8
  %107 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @cw1200_data_write(%struct.cw1200_common* %110, i32* %111, i64 %112)
  %114 = call i64 @WARN_ON(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %92
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %117)
  %119 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %120 = call i32 @wsm_release_tx_buffer(%struct.cw1200_common* %119, i32 1)
  store i32 -1, i32* %4, align 4
  br label %153

121:                                              ; preds = %92
  %122 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %123 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load %struct.wsm_hdr*, %struct.wsm_hdr** %11, align 8
  %130 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @__le16_to_cpu(i32 %131)
  %133 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32* %128, i64 %132)
  br label %134

134:                                              ; preds = %126, %121
  %135 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @wsm_txed(%struct.cw1200_common* %135, i32* %136)
  %138 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %139 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* @WSM_TX_SEQ_MAX, align 4
  %143 = and i32 %141, %142
  %144 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %145 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %151 = call i32 @cw1200_debug_tx_burst(%struct.cw1200_common* %150)
  store i32 1, i32* %4, align 4
  br label %153

152:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %149, %116, %54, %52, %32, %24
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @cw1200_device_wakeup(%struct.cw1200_common*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wsm_alloc_tx_buffer(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_get_tx(%struct.cw1200_common*, i32**, i64*, i32*) #1

declare dso_local i32 @wsm_release_tx_buffer(%struct.cw1200_common*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @WSM_TX_SEQ(i32) #1

declare dso_local i32 @cw1200_data_write(%struct.cw1200_common*, i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i64) #1

declare dso_local i32 @wsm_txed(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @cw1200_debug_tx_burst(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
