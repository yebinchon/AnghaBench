; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_console_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_console_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { i32, i64, %struct.mlxbf_tmfifo_vdev** }
%struct.mlxbf_tmfifo_vdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.mlxbf_tmfifo_msg_hdr = type { i64, i32 }

@MLXBF_TMFIFO_DATA_MIN_WORDS = common dso_local global i32 0, align 4
@VIRTIO_ID_CONSOLE = common dso_local global i64 0, align 8
@MLXBF_TMFIFO_CON_TX_BUF_SIZE = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_TX_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo*, i32)* @mlxbf_tmfifo_console_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_console_tx(%struct.mlxbf_tmfifo* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxbf_tmfifo_msg_hdr, align 8
  %6 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MLXBF_TMFIFO_DATA_MIN_WORDS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %171

16:                                               ; preds = %2
  %17 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %18 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %17, i32 0, i32 2
  %19 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %18, align 8
  %20 = load i64, i64* @VIRTIO_ID_CONSOLE, align 8
  %21 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %19, i64 %20
  %22 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %21, align 8
  store %struct.mlxbf_tmfifo_vdev* %22, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %23 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %24 = icmp ne %struct.mlxbf_tmfifo_vdev* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %27 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %16
  br label %171

32:                                               ; preds = %25
  %33 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %34 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %38 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 4
  %42 = call i32 @CIRC_CNT(i32 %36, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %171

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 16
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = sub i64 %57, 16
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i64, i64* @VIRTIO_ID_CONSOLE, align 8
  %62 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %5, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %5, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = bitcast %struct.mlxbf_tmfifo_msg_hdr* %5 to i32*
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %69 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MLXBF_TMFIFO_TX_DATA, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writeq(i32 %67, i64 %72)
  %74 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %75 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %165, %60
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %166

81:                                               ; preds = %78
  %82 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %83 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %87 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %85, i64 %90
  store i8* %91, i8** %10, align 8
  %92 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %93 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %97 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 4
  %101 = call i32 @CIRC_CNT_TO_END(i32 %95, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp uge i64 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @memcpy(i32* %11, i8* %106, i32 4)
  br label %124

108:                                              ; preds = %81
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @memcpy(i32* %11, i8* %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %11, i64 %113
  %115 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %116 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 4, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memcpy(i32* %114, i8* %118, i32 %122)
  br label %124

124:                                              ; preds = %108, %105
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %127 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MLXBF_TMFIFO_TX_DATA, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writeq(i32 %125, i64 %130)
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp uge i64 %133, 4
  br i1 %134, label %135, label %153

135:                                              ; preds = %124
  %136 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %137 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 4
  %142 = load i32, i32* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 4
  %143 = sext i32 %142 to i64
  %144 = urem i64 %141, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %147 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 %150, 4
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %8, align 4
  br label %165

153:                                              ; preds = %124
  %154 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %155 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 4
  %161 = srem i32 %159, %160
  %162 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %6, align 8
  %163 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %153, %135
  br label %78

166:                                              ; preds = %78
  %167 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %168 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %167, i32 0, i32 0
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  br label %171

171:                                              ; preds = %166, %45, %31, %15
  ret void
}

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
