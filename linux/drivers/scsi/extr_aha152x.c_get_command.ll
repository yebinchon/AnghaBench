; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_get_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_get_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%p: target=%d; lun=%d; cmnd=( \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"); resid=%d; residual=%d; buffers=%d; phase |\00", align 1
@not_issued = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"not issued|\00", align 1
@selecting = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"selecting|\00", align 1
@disconnected = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"disconnected|\00", align 1
@aborted = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"aborted|\00", align 1
@identified = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"identified|\00", align 1
@completed = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"completed|\00", align 1
@spiordy = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"spiordy|\00", align 1
@syncneg = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"syncneg|\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"; next=0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.scsi_cmnd*)* @get_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_command(%struct.seq_file* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (%struct.seq_file*, i8*, %struct.scsi_cmnd*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %7, i32 %12, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %41, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @COMMAND_SIZE(i32 %26)
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.scsi_cmnd*
  %40 = call i32 (%struct.seq_file*, i8*, %struct.scsi_cmnd*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %39)
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %47 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.scsi_cmnd*
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @sg_nents(i32 %57)
  %59 = sub nsw i64 %58, 1
  %60 = call i32 (%struct.seq_file*, i8*, %struct.scsi_cmnd*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %49, i32 %53, i64 %59)
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @not_issued, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %44
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 @seq_puts(%struct.seq_file* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %44
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @selecting, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @disconnected, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = call i32 @seq_puts(%struct.seq_file* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @aborted, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %93
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @identified, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = call i32 @seq_puts(%struct.seq_file* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %104
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @completed, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %125 = call i32 @seq_puts(%struct.seq_file* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %115
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @spiordy, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = call i32 @seq_puts(%struct.seq_file* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %126
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @syncneg, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %147 = call i32 @seq_puts(%struct.seq_file* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %137
  %149 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %151 = call i32 @SCNEXT(%struct.scsi_cmnd* %150)
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to %struct.scsi_cmnd*
  %154 = call i32 (%struct.seq_file*, i8*, %struct.scsi_cmnd*, ...) @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.scsi_cmnd* %153)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, %struct.scsi_cmnd*, ...) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_nents(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @SCNEXT(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
