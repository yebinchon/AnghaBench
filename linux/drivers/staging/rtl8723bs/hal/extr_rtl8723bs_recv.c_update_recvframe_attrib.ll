; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_update_recvframe_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_update_recvframe_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@C2H_PACKET = common dso_local global i64 0, align 8
@NORMAL_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %union.recv_frame*, %struct.recv_stat*)* @update_recvframe_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_recvframe_attrib(%struct.adapter* %0, %union.recv_frame* %1, %struct.recv_stat* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca %struct.recv_stat*, align 8
  %7 = alloca %struct.rx_pkt_attrib*, align 8
  %8 = alloca %struct.recv_stat, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  store %struct.recv_stat* %2, %struct.recv_stat** %6, align 8
  %10 = bitcast %struct.recv_stat* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %9, align 8
  %11 = load %struct.recv_stat*, %struct.recv_stat** %6, align 8
  %12 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %8, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load %struct.recv_stat*, %struct.recv_stat** %6, align 8
  %16 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %8, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load %struct.recv_stat*, %struct.recv_stat** %6, align 8
  %20 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %8, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.recv_stat*, %struct.recv_stat** %6, align 8
  %24 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.recv_stat*, %struct.recv_stat** %6, align 8
  %28 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.recv_stat*, %struct.recv_stat** %6, align 8
  %32 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %36 = bitcast %union.recv_frame* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.rx_pkt_attrib* %38, %struct.rx_pkt_attrib** %7, align 8
  %39 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %40 = call i32 @memset(%struct.rx_pkt_attrib* %39, i32 0, i32 128)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 15
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i64, i64* @C2H_PACKET, align 8
  br label %49

47:                                               ; preds = %3
  %48 = load i64, i64* @NORMAL_RX, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %52 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %54 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NORMAL_RX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %155

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %64 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %72 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %71, i32 0, i32 15
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 14
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %78 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %77, i32 0, i32 14
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 13
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %84 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %83, i32 0, i32 13
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 12
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %90 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %89, i32 0, i32 12
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 1
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %100 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %99, i32 0, i32 11
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 10
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %106 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %112 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %111, i32 0, i32 9
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %118 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %117, i32 0, i32 8
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %124 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %123, i32 0, i32 7
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %130 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %136 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %142 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %148 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %154 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %162

155:                                              ; preds = %49
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %161 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %155, %58
  ret void
}

declare dso_local i32 @memset(%struct.rx_pkt_attrib*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
