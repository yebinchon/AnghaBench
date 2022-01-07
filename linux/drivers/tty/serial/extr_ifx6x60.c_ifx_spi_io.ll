; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_9__, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.ifx_spi_device*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i64 }

@IFX_SPI_STATE_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@IFX_SPI_STATE_IO_AVAILABLE = common dso_local global i32 0, align 4
@ifx_spi_complete = common dso_local global i32 0, align 4
@IFX_SPI_TRANSFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ifx_spi_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifx_spi_io(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifx_spi_device*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.ifx_spi_device*
  store %struct.ifx_spi_device* %6, %struct.ifx_spi_device** %4, align 8
  %7 = load i32, i32* @IFX_SPI_STATE_IO_IN_PROGRESS, align 4
  %8 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %9 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %8, i32 0, i32 2
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %152, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @IFX_SPI_STATE_IO_AVAILABLE, align 4
  %14 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %152

18:                                               ; preds = %12
  %19 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %19, i32 0, i32 13
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %26 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %32 = call i32 @ifx_spi_prepare_tx_buffer(%struct.ifx_spi_device* %31)
  %33 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %33, i32 0, i32 3
  %35 = call i32 @spi_message_init(%struct.TYPE_8__* %34)
  %36 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %37 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %41 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %42 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store %struct.ifx_spi_device* %40, %struct.ifx_spi_device** %43, align 8
  %44 = load i32, i32* @ifx_spi_complete, align 4
  %45 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %46 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @IFX_SPI_TRANSFER_SIZE, align 4
  %49 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 7
  store i32 %48, i32* %51, align 8
  %52 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %53 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %56 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %55, i32 0, i32 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %61 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 4
  %63 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %64 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %69 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %72 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %75 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %78 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %81 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %84 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %30
  %88 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %89 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %92 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %91, i32 0, i32 9
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %95 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %97 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %96, i32 0, i32 8
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %100 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %102 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %101, i32 0, i32 7
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %105 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %108 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %107, i32 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %111 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  br label %127

113:                                              ; preds = %30
  %114 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %115 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %118 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %117, i32 0, i32 7
  store i8* null, i8** %118, align 8
  %119 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %120 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %119, i32 0, i32 6
  store i8* null, i8** %120, align 8
  %121 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %122 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  store i8* null, i8** %123, align 8
  %124 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %125 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i8* null, i8** %126, align 8
  br label %127

127:                                              ; preds = %113, %87
  %128 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %129 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %128, i32 0, i32 5
  %130 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %131 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %130, i32 0, i32 3
  %132 = call i32 @spi_message_add_tail(%struct.TYPE_9__* %129, %struct.TYPE_8__* %131)
  %133 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %134 = call i32 @mrdy_assert(%struct.ifx_spi_device* %133)
  %135 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %136 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %135, i32 0, i32 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %139 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %138, i32 0, i32 3
  %140 = call i32 @spi_async(%struct.TYPE_10__* %137, %struct.TYPE_8__* %139)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %127
  %144 = load i32, i32* @IFX_SPI_STATE_IO_IN_PROGRESS, align 4
  %145 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %146 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %145, i32 0, i32 2
  %147 = call i32 @clear_bit(i32 %144, i32* %146)
  %148 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %149 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %148, i32 0, i32 1
  %150 = call i32 @tasklet_schedule(i32* %149)
  br label %155

151:                                              ; preds = %127
  br label %155

152:                                              ; preds = %12, %1
  %153 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %154 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %143, %152, %151
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ifx_spi_prepare_tx_buffer(%struct.ifx_spi_device*) #1

declare dso_local i32 @spi_message_init(%struct.TYPE_8__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @mrdy_assert(%struct.ifx_spi_device*) #1

declare dso_local i32 @spi_async(%struct.TYPE_10__*, %struct.TYPE_8__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
