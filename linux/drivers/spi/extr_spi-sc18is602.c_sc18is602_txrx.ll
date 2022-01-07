; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sc18is602.c_sc18is602_txrx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sc18is602.c_sc18is602_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc18is602 = type { i32, i32*, i32, i32 }
%struct.spi_message = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@SC18IS602_BUFSIZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc18is602*, %struct.spi_message*, %struct.spi_transfer*, i32)* @sc18is602_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc18is602_txrx(%struct.sc18is602* %0, %struct.spi_message* %1, %struct.spi_transfer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sc18is602*, align 8
  %7 = alloca %struct.spi_message*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sc18is602* %0, %struct.sc18is602** %6, align 8
  store %struct.spi_message* %1, %struct.spi_message** %7, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %17 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %22 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %28 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %32 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %34 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %20, %4
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %42 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %45 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i32* %48, i32* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %56 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %71

64:                                               ; preds = %40
  %65 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %66 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %70 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %64, %63
  br label %100

72:                                               ; preds = %35
  %73 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %79 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %83 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %85 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %88 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @memset(i32* %91, i32 0, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %96 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add i32 %97, %94
  store i32 %98, i32* %96, align 8
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %77, %72
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %197

103:                                              ; preds = %100
  %104 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %105 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %197

108:                                              ; preds = %103
  %109 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %110 = load i32, i32* @SC18IS602_BUFSIZ, align 4
  %111 = call i32 @sc18is602_wait_ready(%struct.sc18is602* %109, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %199

116:                                              ; preds = %108
  %117 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %118 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %121 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %124 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @i2c_master_send(i32 %119, i32* %122, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %199

131:                                              ; preds = %116
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %134 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %199

140:                                              ; preds = %131
  %141 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %142 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %194

145:                                              ; preds = %140
  %146 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %147 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %148, %149
  store i32 %150, i32* %12, align 4
  %151 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %152 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %153 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @sc18is602_wait_ready(%struct.sc18is602* %151, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %5, align 4
  br label %199

160:                                              ; preds = %145
  %161 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %162 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %165 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @i2c_master_recv(i32 %163, i32* %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %160
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %5, align 4
  br label %199

173:                                              ; preds = %160
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %199

180:                                              ; preds = %173
  %181 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %182 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %185 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %188 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @memcpy(i32* %183, i32* %191, i32 %192)
  br label %194

194:                                              ; preds = %180, %140
  %195 = load %struct.sc18is602*, %struct.sc18is602** %6, align 8
  %196 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %103, %100
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %177, %171, %158, %137, %129, %114
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sc18is602_wait_ready(%struct.sc18is602*, i32) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
