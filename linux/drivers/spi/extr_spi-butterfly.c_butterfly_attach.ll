; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-butterfly.c_butterfly_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-butterfly.c_butterfly_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.butterfly = type { %struct.TYPE_8__, %struct.pardevice*, %struct.parport*, %struct.TYPE_6__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { %struct.spi_master*, i32*, i32 }
%struct.spi_master = type { i32, i32 }
%struct.pardevice = type { i32 }
%struct.parport = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.butterfly*, i32*, i32 }
%struct.pardev_cb = type { %struct.butterfly* }

@butterfly = common dso_local global %struct.butterfly* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@butterfly_chipselect = common dso_local global i32 0, align 4
@butterfly_txrx_word_mode0 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"spi_butterfly\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: powerup/reset Butterfly\0A\00", align 1
@spi_cs_bit = common dso_local global i32 0, align 4
@vcc_bits = common dso_local global i32 0, align 4
@butterfly_nreset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"mtd_dataflash\00", align 1
@flash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: dataflash at %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: AVR Butterfly\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: butterfly probe, fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @butterfly_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @butterfly_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.butterfly*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.pardev_cb, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %9 = load %struct.parport*, %struct.parport** %2, align 8
  %10 = getelementptr inbounds %struct.parport, %struct.parport* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.butterfly*, %struct.butterfly** @butterfly, align 8
  %15 = icmp ne %struct.butterfly* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %1
  br label %198

20:                                               ; preds = %16
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call %struct.spi_master* @spi_alloc_master(%struct.device* %21, i32 64)
  store %struct.spi_master* %22, %struct.spi_master** %6, align 8
  %23 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %24 = icmp ne %struct.spi_master* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %192

28:                                               ; preds = %20
  %29 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %30 = call %struct.butterfly* @spi_master_get_devdata(%struct.spi_master* %29)
  store %struct.butterfly* %30, %struct.butterfly** %5, align 8
  %31 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 0
  store i32 42, i32* %32, align 4
  %33 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i32 0, i32 1
  store i32 2, i32* %34, align 4
  %35 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %36 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %37 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store %struct.spi_master* %35, %struct.spi_master** %38, align 8
  %39 = load i32, i32* @butterfly_chipselect, align 4
  %40 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %41 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @butterfly_txrx_word_mode0, align 4
  %44 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %45 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SPI_MODE_0, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.parport*, %struct.parport** %2, align 8
  %51 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %52 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %51, i32 0, i32 2
  store %struct.parport* %50, %struct.parport** %52, align 8
  %53 = call i32 @memset(%struct.pardev_cb* %8, i32 0, i32 8)
  %54 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %55 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %8, i32 0, i32 0
  store %struct.butterfly* %54, %struct.butterfly** %55, align 8
  %56 = load %struct.parport*, %struct.parport** %2, align 8
  %57 = call %struct.pardevice* @parport_register_dev_model(%struct.parport* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.pardev_cb* %8, i32 0)
  store %struct.pardevice* %57, %struct.pardevice** %3, align 8
  %58 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %59 = icmp ne %struct.pardevice* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %28
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %186

63:                                               ; preds = %28
  %64 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %65 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %66 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %65, i32 0, i32 1
  store %struct.pardevice* %64, %struct.pardevice** %66, align 8
  %67 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %68 = call i32 @parport_claim(%struct.pardevice* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %183

72:                                               ; preds = %63
  %73 = load %struct.parport*, %struct.parport** %2, align 8
  %74 = getelementptr inbounds %struct.parport, %struct.parport* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %78 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %77, i32 0, i32 2
  %79 = load %struct.parport*, %struct.parport** %78, align 8
  %80 = load i32, i32* @spi_cs_bit, align 4
  %81 = call i32 @parport_frob_control(%struct.parport* %79, i32 %80, i32 0)
  %82 = load i32, i32* @vcc_bits, align 4
  %83 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %84 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %88 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %87, i32 0, i32 2
  %89 = load %struct.parport*, %struct.parport** %88, align 8
  %90 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %91 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @parport_write_data(%struct.parport* %89, i32 %92)
  %94 = call i32 @msleep(i32 5)
  %95 = load i32, i32* @butterfly_nreset, align 4
  %96 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %97 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %101 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %100, i32 0, i32 2
  %102 = load %struct.parport*, %struct.parport** %101, align 8
  %103 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %104 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @parport_write_data(%struct.parport* %102, i32 %105)
  %107 = call i32 @msleep(i32 100)
  %108 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %109 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %108, i32 0, i32 0
  %110 = call i32 @spi_bitbang_start(%struct.TYPE_8__* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %72
  br label %174

114:                                              ; preds = %72
  %115 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %116 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %115, i32 0, i32 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 15000000, i32* %119, align 8
  %120 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %121 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @strcpy(i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %128 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %127, i32 0, i32 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  store i32* @flash, i32** %131, align 8
  %132 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %133 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %132, i32 0, i32 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %138 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %139 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %138, i32 0, i32 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  store %struct.butterfly* %137, %struct.butterfly** %142, align 8
  %143 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %144 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.spi_master*, %struct.spi_master** %145, align 8
  %147 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %148 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %147, i32 0, i32 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 0
  %151 = call %struct.TYPE_6__* @spi_new_device(%struct.spi_master* %146, %struct.TYPE_7__* %150)
  %152 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %153 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %152, i32 0, i32 3
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %153, align 8
  %154 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %155 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %154, i32 0, i32 3
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = icmp ne %struct.TYPE_6__* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %114
  %159 = load %struct.parport*, %struct.parport** %2, align 8
  %160 = getelementptr inbounds %struct.parport, %struct.parport* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %163 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @dev_name(i32* %165)
  %167 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %166)
  br label %168

168:                                              ; preds = %158, %114
  %169 = load %struct.parport*, %struct.parport** %2, align 8
  %170 = getelementptr inbounds %struct.parport, %struct.parport* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  %173 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  store %struct.butterfly* %173, %struct.butterfly** @butterfly, align 8
  br label %198

174:                                              ; preds = %113
  %175 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %176 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %175, i32 0, i32 2
  %177 = load %struct.parport*, %struct.parport** %176, align 8
  %178 = call i32 @parport_write_data(%struct.parport* %177, i32 0)
  %179 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %180 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %179, i32 0, i32 1
  %181 = load %struct.pardevice*, %struct.pardevice** %180, align 8
  %182 = call i32 @parport_release(%struct.pardevice* %181)
  br label %183

183:                                              ; preds = %174, %71
  %184 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %185 = call i32 @parport_unregister_device(%struct.pardevice* %184)
  br label %186

186:                                              ; preds = %183, %60
  %187 = load %struct.butterfly*, %struct.butterfly** %5, align 8
  %188 = getelementptr inbounds %struct.butterfly, %struct.butterfly* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.spi_master*, %struct.spi_master** %189, align 8
  %191 = call i32 @spi_master_put(%struct.spi_master* %190)
  br label %192

192:                                              ; preds = %186, %25
  %193 = load %struct.parport*, %struct.parport** %2, align 8
  %194 = getelementptr inbounds %struct.parport, %struct.parport* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %192, %168, %19
  ret void
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.butterfly* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local %struct.pardevice* @parport_register_dev_model(%struct.parport*, i8*, %struct.pardev_cb*, i32) #1

declare dso_local i32 @parport_claim(%struct.pardevice*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @parport_frob_control(%struct.parport*, i32, i32) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @spi_new_device(%struct.spi_master*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @parport_release(%struct.pardevice*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
