; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c_init_orchid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c_init_orchid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.orc_host = type { i32*, i64, i32, i32*, i32, i32, i32 }

@ORC_GIMSK = common dso_local global i64 0, align 8
@ORC_HSTUS = common dso_local global i64 0, align 8
@RREADY = common dso_local global i32 0, align 4
@DEVRST = common dso_local global i32 0, align 4
@ORC_HCTRL = common dso_local global i64 0, align 8
@HDO = common dso_local global i32 0, align 4
@nvramp = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_TARGETS = common dso_local global i32 0, align 4
@ORC_MAXTAGS = common dso_local global i32 0, align 4
@NCC_BUSRESET = common dso_local global i32 0, align 4
@HCF_SCSI_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*)* @init_orchid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_orchid(%struct.orc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orc_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.orc_host* %0, %struct.orc_host** %3, align 8
  %7 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %8 = call i32 @init_alloc_map(%struct.orc_host* %7)
  %9 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %10 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ORC_GIMSK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i32 255, i64 %13)
  %15 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %16 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ORC_HSTUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  %21 = load i32, i32* @RREADY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %1
  %25 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %26 = call i32 @orc_read_fwrev(%struct.orc_host* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 65535
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = load i32, i32* @DEVRST, align 4
  %31 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %32 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ORC_HCTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %30, i64 %35)
  %37 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %38 = call i64 @wait_chip_ready(%struct.orc_host* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %158

41:                                               ; preds = %29
  %42 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %43 = call i32 @orc_load_firmware(%struct.orc_host* %42)
  %44 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %45 = call i32 @setup_SCBs(%struct.orc_host* %44)
  %46 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %47 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ORC_HCTRL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %53 = call i64 @wait_firmware_ready(%struct.orc_host* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %158

56:                                               ; preds = %41
  br label %60

57:                                               ; preds = %24
  %58 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %59 = call i32 @setup_SCBs(%struct.orc_host* %58)
  br label %60

60:                                               ; preds = %57, %56
  br label %90

61:                                               ; preds = %1
  %62 = load i32, i32* @DEVRST, align 4
  %63 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %64 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ORC_HCTRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %62, i64 %67)
  %69 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %70 = call i64 @wait_chip_ready(%struct.orc_host* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %158

73:                                               ; preds = %61
  %74 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %75 = call i32 @orc_load_firmware(%struct.orc_host* %74)
  %76 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %77 = call i32 @setup_SCBs(%struct.orc_host* %76)
  %78 = load i32, i32* @HDO, align 4
  %79 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %80 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ORC_HCTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outb(i32 %78, i64 %83)
  %85 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %86 = call i64 @wait_firmware_ready(%struct.orc_host* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  store i32 -1, i32* %2, align 4
  br label %158

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %92 = call i32 @read_eeprom(%struct.orc_host* %91)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nvramp, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 -1, i32* %2, align 4
  br label %158

98:                                               ; preds = %90
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nvramp, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %103 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nvramp, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %108 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @MAX_TARGETS, align 4
  %110 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %111 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nvramp, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store i32* %113, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %133, %98
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 16
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %121 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* @ORC_MAXTAGS, align 4
  %127 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %128 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  br label %133

133:                                              ; preds = %117
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %114

138:                                              ; preds = %114
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nvramp, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NCC_BUSRESET, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @HCF_SCSI_RESET, align 4
  %147 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %148 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %153 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ORC_GIMSK, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @outb(i32 251, i64 %156)
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %151, %97, %88, %72, %55, %40
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @init_alloc_map(%struct.orc_host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @orc_read_fwrev(%struct.orc_host*) #1

declare dso_local i64 @wait_chip_ready(%struct.orc_host*) #1

declare dso_local i32 @orc_load_firmware(%struct.orc_host*) #1

declare dso_local i32 @setup_SCBs(%struct.orc_host*) #1

declare dso_local i64 @wait_firmware_ready(%struct.orc_host*) #1

declare dso_local i32 @read_eeprom(%struct.orc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
