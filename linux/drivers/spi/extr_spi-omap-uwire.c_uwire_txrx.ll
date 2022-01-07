; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-uwire.c_uwire_txrx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-uwire.c_uwire_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32*, i32* }

@CS_CMD = common dso_local global i32 0, align 4
@CSRB = common dso_local global i32 0, align 4
@UWIRE_TDR = common dso_local global i32 0, align 4
@START = common dso_local global i32 0, align 4
@UWIRE_CSR = common dso_local global i32 0, align 4
@RDRB = common dso_local global i32 0, align 4
@UWIRE_RDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @uwire_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwire_txrx(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %172

30:                                               ; preds = %24, %2
  %31 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 10
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @CS_CMD, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %103

42:                                               ; preds = %30
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %12, align 8
  br label %46

46:                                               ; preds = %93, %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp uge i32 %47, 1
  br i1 %48, label %49, label %97

49:                                               ; preds = %46
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %12, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ugt i32 %53, 8
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  store i32 2, i32* %8, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %12, align 8
  %58 = load i32, i32* %56, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %63

62:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* %7, align 4
  %65 = sub i32 16, %64
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @CSRB, align 4
  %69 = call i64 @wait_uwire_csr_flag(i32 %68, i32 0, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %169

72:                                               ; preds = %63
  %73 = load i32, i32* @UWIRE_TDR, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @uwire_write_reg(i32 %73, i32 %74)
  %76 = load i32, i32* @START, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %79, 5
  %81 = or i32 %78, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @UWIRE_CSR, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @uwire_write_reg(i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @CSRB, align 4
  %89 = load i32, i32* @CSRB, align 4
  %90 = call i64 @wait_uwire_csr_flag(i32 %88, i32 %89, i32 1)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %169

93:                                               ; preds = %72
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %46

97:                                               ; preds = %46
  %98 = load i32, i32* @CSRB, align 4
  %99 = call i64 @wait_uwire_csr_flag(i32 %98, i32 0, i32 0)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %169

102:                                              ; preds = %97
  br label %167

103:                                              ; preds = %30
  %104 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %105 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %166

108:                                              ; preds = %103
  %109 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %110 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %13, align 8
  br label %112

112:                                              ; preds = %161, %108
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %165

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = icmp ugt i32 %116, 8
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 2, i32* %8, align 4
  br label %120

119:                                              ; preds = %115
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load i32, i32* @START, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 %124, 0
  %126 = or i32 %123, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @UWIRE_CSR, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @uwire_write_reg(i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* @CSRB, align 4
  %134 = load i32, i32* @CSRB, align 4
  %135 = call i64 @wait_uwire_csr_flag(i32 %133, i32 %134, i32 1)
  %136 = load i32, i32* @RDRB, align 4
  %137 = load i32, i32* @CSRB, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @RDRB, align 4
  %140 = call i64 @wait_uwire_csr_flag(i32 %138, i32 %139, i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %120
  br label %169

143:                                              ; preds = %120
  %144 = load i32, i32* @UWIRE_RDR, align 4
  %145 = call i32 @uwire_read_reg(i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %7, align 4
  %147 = shl i32 1, %146
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %13, align 8
  store i32 %151, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %161

156:                                              ; preds = %143
  %157 = load i32, i32* %9, align 4
  %158 = ashr i32 %157, 8
  %159 = load i32*, i32** %13, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %13, align 8
  store i32 %158, i32* %159, align 4
  br label %161

161:                                              ; preds = %156, %143
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %112

165:                                              ; preds = %112
  br label %166

166:                                              ; preds = %165, %103
  br label %167

167:                                              ; preds = %166, %102
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %172

169:                                              ; preds = %142, %101, %92, %71
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %167, %29
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @wait_uwire_csr_flag(i32, i32, i32) #1

declare dso_local i32 @uwire_write_reg(i32, i32) #1

declare dso_local i32 @uwire_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
