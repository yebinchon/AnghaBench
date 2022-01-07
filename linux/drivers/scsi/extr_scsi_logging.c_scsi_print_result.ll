; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_print_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_print_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"UNKNOWN(0x%02x) \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"hostbyte=%s \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hostbyte=0x%02x \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"driverbyte=%s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"driverbyte=0x%02x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_print_result(%struct.scsi_cmnd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @scsi_mlreturn_string(i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @scsi_hostbyte_string(i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @scsi_driverbyte_string(i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = call i8* @scsi_log_reserve_buffer(i64* %9)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %189

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call i32 @scmd_name(%struct.scsi_cmnd* %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @sdev_format_header(i8* %28, i64 %29, i32 %31, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %179

42:                                               ; preds = %27
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %49, %50
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %48, i64 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp uge i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %179

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %71, %72
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %70, i64 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %8, align 8
  br label %89

78:                                               ; preds = %64
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub i64 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %81, i64 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %78, %67
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp uge i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @WARN_ON(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %179

97:                                               ; preds = %89
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %8, align 8
  %103 = sub i64 %101, %102
  %104 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %100, i64 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp uge i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @WARN_ON(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  br label %179

114:                                              ; preds = %97
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %8, align 8
  %123 = sub i64 %121, %122
  %124 = load i8*, i8** %11, align 8
  %125 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %120, i64 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %8, align 8
  br label %142

128:                                              ; preds = %114
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %8, align 8
  %134 = sub i64 %132, %133
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @host_byte(i32 %137)
  %139 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %131, i64 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  %140 = load i64, i64* %8, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %128, %117
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp uge i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i64 @WARN_ON(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %179

150:                                              ; preds = %142
  %151 = load i8*, i8** %12, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i8*, i8** %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = sub i64 %157, %158
  %160 = load i8*, i8** %12, align 8
  %161 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %156, i64 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %160)
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %8, align 8
  br label %178

164:                                              ; preds = %150
  %165 = load i8*, i8** %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* %8, align 8
  %170 = sub i64 %168, %169
  %171 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %172 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @driver_byte(i32 %173)
  %175 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %167, i64 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %174)
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %8, align 8
  br label %178

178:                                              ; preds = %164, %153
  br label %179

179:                                              ; preds = %178, %149, %113, %96, %62, %41
  %180 = load i32, i32* @KERN_INFO, align 4
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @dev_printk(i32 %180, i32* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %185)
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @scsi_log_release_buffer(i8* %187)
  br label %189

189:                                              ; preds = %179, %26
  ret void
}

declare dso_local i8* @scsi_mlreturn_string(i32) #1

declare dso_local i8* @scsi_hostbyte_string(i32) #1

declare dso_local i8* @scsi_driverbyte_string(i32) #1

declare dso_local i8* @scsi_log_reserve_buffer(i64*) #1

declare dso_local i64 @sdev_format_header(i8*, i64, i32, i32) #1

declare dso_local i32 @scmd_name(%struct.scsi_cmnd*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @host_byte(i32) #1

declare dso_local i8* @driver_byte(i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*) #1

declare dso_local i32 @scsi_log_release_buffer(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
