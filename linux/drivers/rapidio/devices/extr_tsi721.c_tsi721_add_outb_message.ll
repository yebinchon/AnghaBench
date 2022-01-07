; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_add_outb_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_add_outb_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32, %struct.tsi721_device* }
%struct.tsi721_device = type { %struct.TYPE_2__*, i64, i32* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i64*, %struct.tsi721_omsg_desc*, i32* }
%struct.tsi721_omsg_desc = type { i8*, i8*, i8*, i8* }
%struct.rio_dev = type { i32 }

@TSI721_MSG_MAX_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DTYPE4 = common dso_local global i32 0, align 4
@TSI721_OMD_IOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, %struct.rio_dev*, i32, i8*, i64)* @tsi721_add_outb_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_add_outb_message(%struct.rio_mport* %0, %struct.rio_dev* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca %struct.rio_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsi721_device*, align 8
  %13 = alloca %struct.tsi721_omsg_desc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store %struct.rio_dev* %1, %struct.rio_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %17 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %16, i32 0, i32 1
  %18 = load %struct.tsi721_device*, %struct.tsi721_device** %17, align 8
  store %struct.tsi721_device* %18, %struct.tsi721_device** %12, align 8
  %19 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %20 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @TSI721_MSG_MAX_SIZE, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %27, %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %225

37:                                               ; preds = %31
  %38 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %39 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %48 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %56 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @memcpy(i32 %65, i8* %66, i64 %67)
  %69 = load i64, i64* %11, align 8
  %70 = and i64 %69, 7
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %37
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %72, %37
  %76 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %77 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %82, align 8
  store %struct.tsi721_omsg_desc* %83, %struct.tsi721_omsg_desc** %13, align 8
  %84 = load i32, i32* @DTYPE4, align 4
  %85 = shl i32 %84, 29
  %86 = load %struct.rio_dev*, %struct.rio_dev** %8, align 8
  %87 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %85, %88
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %91, i64 %92
  %94 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %93, i32 0, i32 0
  store i8* %90, i8** %94, align 8
  %95 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %96 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 26
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %99, 22
  %101 = or i32 %98, %100
  %102 = or i32 %101, 57344
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %11, align 8
  %105 = and i64 %104, 4088
  %106 = or i64 %103, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %109, i64 %110
  %112 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %111, i32 0, i32 3
  store i8* %108, i8** %112, align 8
  %113 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %114 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %126, i64 %127
  %129 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %128, i32 0, i32 2
  store i8* %125, i8** %129, align 8
  %130 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %131 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = ashr i32 %141, 32
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %13, align 8
  %145 = load i64, i64* %14, align 8
  %146 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %144, i64 %145
  %147 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  %148 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %149 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %158 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %167 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %165, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %75
  %176 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %177 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  %183 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %184 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %175, %75
  %193 = call i32 (...) @mb()
  %194 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %195 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %203 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i64 @TSI721_OBDMAC_DWRCNT(i32 %205)
  %207 = add nsw i64 %204, %206
  %208 = call i32 @iowrite32(i32 %201, i64 %207)
  %209 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %210 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i64 @TSI721_OBDMAC_DWRCNT(i32 %212)
  %214 = add nsw i64 %211, %213
  %215 = call i32 @ioread32(i64 %214)
  %216 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %217 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %216, i32 0, i32 0
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  %223 = load i64, i64* %15, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  store i32 0, i32* %6, align 4
  br label %225

225:                                              ; preds = %192, %34
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_OBDMAC_DWRCNT(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
