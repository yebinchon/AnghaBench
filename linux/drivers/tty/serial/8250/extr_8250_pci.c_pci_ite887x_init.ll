; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_ite887x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_ite887x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i32 }

@pci_ite887x_init.inta_addr = internal constant [8 x i16] [i16 672, i16 704, i16 544, i16 576, i16 480, i16 512, i16 640, i16 0], align 16
@ITE_887x_IOSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ite887x\00", align 1
@ITE_887x_POSIO0 = common dso_local global i64 0, align 8
@ITE_887x_POSIO_ENABLE = common dso_local global i16 0, align 2
@ITE_887x_POSIO_SPEED = common dso_local global i16 0, align 2
@ITE_887x_POSIO_IOSIZE_32 = common dso_local global i16 0, align 2
@ITE_887x_INTCBAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ite887x: could not find iobase\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown ITE887x\00", align 1
@ITE_887x_PS0BAR = common dso_local global i64 0, align 8
@ITE_887x_POSIO_IOSIZE_8 = common dso_local global i16 0, align 2
@ITE_887x_UARTBAR = common dso_local global i64 0, align 8
@ITE_887x_MISCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_ite887x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ite887x_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.resource* null, %struct.resource** %7, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %72, %1
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i16], [8 x i16]* @pci_ite887x_init.inta_addr, i64 0, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = icmp eq %struct.resource* %19, null
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i1 [ false, %11 ], [ %20, %18 ]
  br i1 %22, label %23, label %75

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i16], [8 x i16]* @pci_ite887x_init.inta_addr, i64 0, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = load i32, i32* @ITE_887x_IOSIZE, align 4
  %29 = call %struct.resource* @request_region(i16 signext %27, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %29, %struct.resource** %7, align 8
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %32, label %72

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load i64, i64* @ITE_887x_POSIO0, align 8
  %35 = load i16, i16* @ITE_887x_POSIO_ENABLE, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* @ITE_887x_POSIO_SPEED, align 2
  %38 = sext i16 %37 to i32
  %39 = or i32 %36, %38
  %40 = load i16, i16* @ITE_887x_POSIO_IOSIZE_32, align 2
  %41 = sext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i16], [8 x i16]* @pci_ite887x_init.inta_addr, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = or i32 %42, %47
  %49 = trunc i32 %48 to i16
  %50 = call i32 @pci_write_config_dword(%struct.pci_dev* %33, i64 %34, i16 signext %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = load i64, i64* @ITE_887x_INTCBAR, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i16], [8 x i16]* @pci_ite887x_init.inta_addr, i64 0, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = call i32 @pci_write_config_dword(%struct.pci_dev* %51, i64 %52, i16 signext %56)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i16], [8 x i16]* @pci_ite887x_init.inta_addr, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = call i32 @inb(i16 signext %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 255
  br i1 %64, label %65, label %66

65:                                               ; preds = %32
  br label %75

66:                                               ; preds = %32
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ITE_887x_IOSIZE, align 4
  %71 = call i32 @release_region(i32 %69, i32 %70)
  store %struct.resource* null, %struct.resource** %7, align 8
  br label %72

72:                                               ; preds = %66, %23
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %11

75:                                               ; preds = %65, %21
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i16], [8 x i16]* @pci_ite887x_init.inta_addr, i64 0, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = icmp ne i16 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %194

87:                                               ; preds = %75
  %88 = load %struct.resource*, %struct.resource** %7, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 24
  %92 = trunc i32 %91 to i16
  %93 = call i32 @inb(i16 signext %92)
  %94 = and i32 %93, 15
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  switch i32 %95, label %100 [
    i32 2, label %96
    i32 10, label %96
    i32 14, label %97
    i32 6, label %98
    i32 8, label %99
  ]

96:                                               ; preds = %87, %87
  store i32 0, i32* %4, align 4
  br label %105

97:                                               ; preds = %87
  store i32 2, i32* %4, align 4
  br label %105

98:                                               ; preds = %87
  store i32 1, i32* %4, align 4
  br label %105

99:                                               ; preds = %87
  store i32 2, i32* %4, align 4
  br label %105

100:                                              ; preds = %87
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = call i32 @moan_device(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.pci_dev* %101)
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %99, %98, %97, %96
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %180, %105
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %183

110:                                              ; preds = %106
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = load i64, i64* @ITE_887x_PS0BAR, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  %115 = mul nsw i32 4, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %112, %116
  %118 = call i32 @pci_read_config_dword(%struct.pci_dev* %111, i64 %117, i32* %10)
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 65280
  store i32 %120, i32* %10, align 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %122 = load i64, i64* @ITE_887x_POSIO0, align 8
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  %125 = mul nsw i32 4, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %122, %126
  %128 = load i16, i16* @ITE_887x_POSIO_ENABLE, align 2
  %129 = sext i16 %128 to i32
  %130 = load i16, i16* @ITE_887x_POSIO_SPEED, align 2
  %131 = sext i16 %130 to i32
  %132 = or i32 %129, %131
  %133 = load i16, i16* @ITE_887x_POSIO_IOSIZE_8, align 2
  %134 = sext i16 %133 to i32
  %135 = or i32 %132, %134
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %135, %136
  %138 = trunc i32 %137 to i16
  %139 = call i32 @pci_write_config_dword(%struct.pci_dev* %121, i64 %127, i16 signext %138)
  %140 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %141 = load i64, i64* @ITE_887x_UARTBAR, align 8
  %142 = call i32 @pci_read_config_dword(%struct.pci_dev* %140, i64 %141, i32* %9)
  %143 = load i32, i32* %5, align 4
  %144 = mul nsw i32 16, %143
  %145 = shl i32 65535, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %5, align 4
  %151 = mul nsw i32 16, %150
  %152 = shl i32 %149, %151
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %156 = load i64, i64* @ITE_887x_UARTBAR, align 8
  %157 = load i32, i32* %9, align 4
  %158 = trunc i32 %157 to i16
  %159 = call i32 @pci_write_config_dword(%struct.pci_dev* %155, i64 %156, i16 signext %158)
  %160 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %161 = load i64, i64* @ITE_887x_MISCR, align 8
  %162 = call i32 @pci_read_config_dword(%struct.pci_dev* %160, i64 %161, i32* %8)
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 4, %163
  %165 = sub nsw i32 12, %164
  %166 = shl i32 15, %165
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %5, align 4
  %171 = sub nsw i32 23, %170
  %172 = shl i32 1, %171
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %176 = load i64, i64* @ITE_887x_MISCR, align 8
  %177 = load i32, i32* %8, align 4
  %178 = trunc i32 %177 to i16
  %179 = call i32 @pci_write_config_dword(%struct.pci_dev* %175, i64 %176, i16 signext %178)
  br label %180

180:                                              ; preds = %110
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %106

183:                                              ; preds = %106
  %184 = load i32, i32* %4, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load %struct.resource*, %struct.resource** %7, align 8
  %188 = getelementptr inbounds %struct.resource, %struct.resource* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ITE_887x_IOSIZE, align 4
  %191 = call i32 @release_region(i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %186, %183
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %81
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.resource* @request_region(i16 signext, i32, i8*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i16 signext) #1

declare dso_local i32 @inb(i16 signext) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @moan_device(i8*, %struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
