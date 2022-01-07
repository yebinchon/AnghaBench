; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_update_recvframe_attrib_88e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_update_recvframe_attrib_88e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_frame = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8* }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }

@NORMAL_RX = common dso_local global i64 0, align 8
@TX_REPORT1 = common dso_local global i64 0, align 8
@TX_RPT1_PKT_LEN = common dso_local global i8* null, align 8
@TX_REPORT2 = common dso_local global i64 0, align 8
@HIS_REPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_recvframe_attrib_88e(%struct.recv_frame* %0, %struct.recv_stat* %1) #0 {
  %3 = alloca %struct.recv_frame*, align 8
  %4 = alloca %struct.recv_stat*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.recv_stat, align 4
  store %struct.recv_frame* %0, %struct.recv_frame** %3, align 8
  store %struct.recv_stat* %1, %struct.recv_stat** %4, align 8
  %7 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %8 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %12 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %16 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %20 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %24 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.recv_stat*, %struct.recv_stat** %4, align 8
  %28 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %32 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %31, i32 0, i32 0
  store %struct.rx_pkt_attrib* %32, %struct.rx_pkt_attrib** %5, align 8
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %34 = call i32 @memset(%struct.rx_pkt_attrib* %33, i32 0, i32 88)
  %35 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = ashr i32 %37, 14
  %39 = and i32 %38, 1
  %40 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %41 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = ashr i32 %44, 14
  %46 = and i32 %45, 3
  %47 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %48 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %50 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @NORMAL_RX, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %173

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = and i32 %58, 16383
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %63 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %62, i32 0, i32 17
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 15
  %69 = mul nsw i32 %68, 8
  %70 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %71 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = ashr i32 %74, 26
  %76 = and i32 %75, 1
  %77 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %78 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = call i32 @BIT(i32 27)
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %88 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = ashr i32 %91, 20
  %93 = and i32 %92, 7
  %94 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %95 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = ashr i32 %98, 23
  %100 = and i32 %99, 1
  %101 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %102 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 15
  %108 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %109 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = ashr i32 %112, 13
  %114 = and i32 %113, 1
  %115 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %116 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  %117 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = and i32 %119, 4095
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %124 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %123, i32 0, i32 18
  store i8* %122, i8** %124, align 8
  %125 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = ashr i32 %127, 12
  %129 = and i32 %128, 15
  %130 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %131 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = ashr i32 %134, 27
  %136 = and i32 %135, 1
  %137 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %138 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  %139 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le32_to_cpu(i32 %140)
  %142 = ashr i32 %141, 26
  %143 = and i32 %142, 1
  %144 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %145 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = and i32 %148, 63
  %150 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %151 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %150, i32 0, i32 12
  store i32 %149, i32* %151, align 8
  %152 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le32_to_cpu(i32 %153)
  %155 = ashr i32 %154, 6
  %156 = and i32 %155, 1
  %157 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %158 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %157, i32 0, i32 13
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le32_to_cpu(i32 %160)
  %162 = ashr i32 %161, 15
  %163 = and i32 %162, 1
  %164 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %165 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %164, i32 0, i32 14
  store i32 %163, i32* %165, align 8
  %166 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le32_to_cpu(i32 %167)
  %169 = ashr i32 %168, 24
  %170 = and i32 %169, 3
  %171 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %172 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %171, i32 0, i32 15
  store i32 %170, i32* %172, align 4
  br label %237

173:                                              ; preds = %2
  %174 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %175 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* @TX_REPORT1, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load i8*, i8** @TX_RPT1_PKT_LEN, align 8
  %182 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %183 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %182, i32 0, i32 17
  store i8* %181, i8** %183, align 8
  %184 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %185 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %184, i32 0, i32 2
  store i32 0, i32* %185, align 8
  br label %236

186:                                              ; preds = %173
  %187 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %188 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @TX_REPORT2, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %218

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = and i32 %196, 1023
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %201 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %200, i32 0, i32 17
  store i8* %199, i8** %201, align 8
  %202 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %203 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %202, i32 0, i32 2
  store i32 0, i32* %203, align 8
  %204 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le32_to_cpu(i32 %205)
  %207 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %208 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %207, i32 0, i32 16
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %206, i32* %210, align 4
  %211 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le32_to_cpu(i32 %212)
  %214 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %215 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %214, i32 0, i32 16
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 %213, i32* %217, align 4
  br label %235

218:                                              ; preds = %186
  %219 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %220 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* @HIS_REPORT, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %6, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @le32_to_cpu(i32 %227)
  %229 = and i32 %228, 16383
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %233 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %232, i32 0, i32 17
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %225, %218
  br label %235

235:                                              ; preds = %234, %193
  br label %236

236:                                              ; preds = %235, %180
  br label %237

237:                                              ; preds = %236, %55
  ret void
}

declare dso_local i32 @memset(%struct.rx_pkt_attrib*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
