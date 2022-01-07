; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_proc.c_proc_print_scsidevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_proc.c_proc_print_scsidevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Host: scsi%d Channel: %02d Id: %02d Lun: %02llu\0A  Vendor: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" Model: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" Rev: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  Type:   %s \00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"               ANSI  SCSI revision: %02x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" CCS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @proc_print_scsidevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_print_scsidevice(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.seq_file*
  store %struct.seq_file* %9, %struct.seq_file** %6, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @scsi_is_sdev_device(%struct.device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %160

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %5, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %60, %14
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 32
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @seq_putc(%struct.seq_file* %46, i8 signext %54)
  br label %59

56:                                               ; preds = %36
  %57 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %58 = call i32 @seq_putc(%struct.seq_file* %57, i8 signext 32)
  br label %59

59:                                               ; preds = %56, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %33

63:                                               ; preds = %33
  %64 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %93, %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 32
  br i1 %77, label %78, label %89

78:                                               ; preds = %69
  %79 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %80 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i8
  %88 = call i32 @seq_putc(%struct.seq_file* %79, i8 signext %87)
  br label %92

89:                                               ; preds = %69
  %90 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %91 = call i32 @seq_putc(%struct.seq_file* %90, i8 signext 32)
  br label %92

92:                                               ; preds = %89, %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %66

96:                                               ; preds = %66
  %97 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %98 = call i32 @seq_puts(%struct.seq_file* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %126, %96
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %109, 32
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %113 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = trunc i32 %119 to i8
  %121 = call i32 @seq_putc(%struct.seq_file* %112, i8 signext %120)
  br label %125

122:                                              ; preds = %102
  %123 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %124 = call i32 @seq_putc(%struct.seq_file* %123, i8 signext 32)
  br label %125

125:                                              ; preds = %122, %111
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %99

129:                                              ; preds = %99
  %130 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %131 = call i32 @seq_putc(%struct.seq_file* %130, i8 signext 10)
  %132 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %133 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %134 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @scsi_device_type(i32 %135)
  %137 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %139 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %143 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 1
  %146 = zext i1 %145 to i32
  %147 = sub nsw i32 %141, %146
  %148 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %150 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %156

153:                                              ; preds = %129
  %154 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %155 = call i32 @seq_puts(%struct.seq_file* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %159

156:                                              ; preds = %129
  %157 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %158 = call i32 @seq_putc(%struct.seq_file* %157, i8 signext 10)
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %13
  ret i32 0
}

declare dso_local i32 @scsi_is_sdev_device(%struct.device*) #1

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @scsi_device_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
