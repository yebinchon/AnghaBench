; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"NinjaSCSI status\0A\0ADriver version:        $Revision: 1.23 $\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SCSI host No.:         %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"IRQ:                   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"IO:                    0x%lx-0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"MMIO(virtual address): 0x%lx-0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sg_tablesize:          %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"burst transfer mode:   \00", align 1
@nsp_burst_mode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"io8\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"io32\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mem32\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"CurrentSC:             0x%p\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"SDTR status\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"id %d: \00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"----- NinjaSCSI-3 host adapter\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" sync\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c" transfer %d.%dMB/s, offset %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @nsp_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 @seq_puts(%struct.seq_file* %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = sub nsw i64 %38, 1
  %40 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %30, i64 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = sub nsw i64 %52, 1
  %54 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %44, i64 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = call i32 @seq_puts(%struct.seq_file* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* @nsp_burst_mode, align 4
  switch i32 %62, label %72 [
    i32 132, label %63
    i32 133, label %66
    i32 131, label %69
  ]

63:                                               ; preds = %2
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %75

66:                                               ; preds = %2
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = call i32 @seq_puts(%struct.seq_file* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %75

69:                                               ; preds = %2
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %75

72:                                               ; preds = %2
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @seq_puts(%struct.seq_file* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69, %66, %63
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_putc(%struct.seq_file* %76, i8 signext 10)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = call i32 @seq_puts(%struct.seq_file* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %171, %75
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %97)
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %174

100:                                              ; preds = %93
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %106 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = call i32 @seq_puts(%struct.seq_file* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %171

112:                                              ; preds = %100
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %130 [
    i32 128, label %121
    i32 130, label %124
    i32 129, label %127
  ]

121:                                              ; preds = %112
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 @seq_puts(%struct.seq_file* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %133

124:                                              ; preds = %112
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = call i32 @seq_puts(%struct.seq_file* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %133

127:                                              ; preds = %112
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 @seq_puts(%struct.seq_file* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %133

130:                                              ; preds = %112
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = call i32 @seq_puts(%struct.seq_file* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %127, %124, %121
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %168

143:                                              ; preds = %133
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 4
  %153 = sdiv i32 1000000, %152
  store i32 %153, i32* %6, align 4
  %154 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sdiv i32 %155, 1000
  %157 = load i32, i32* %6, align 4
  %158 = srem i32 %157, 1000
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %156, i32 %158, i32 %166)
  br label %168

168:                                              ; preds = %143, %133
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = call i32 @seq_putc(%struct.seq_file* %169, i8 signext 10)
  br label %171

171:                                              ; preds = %168, %109
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %93

174:                                              ; preds = %93
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
