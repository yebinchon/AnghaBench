; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_print_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_print_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"CDB: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CDB[%02x]: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_print_command(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %208

13:                                               ; preds = %1
  %14 = call i8* @scsi_log_reserve_buffer(i64* %6)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %208

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = call i32 @scmd_name(%struct.scsi_cmnd* %21)
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @sdev_format_header(i8* %19, i64 %20, i32 %22, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %198

33:                                               ; preds = %18
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %37, %38
  %40 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %36, i64 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp uge i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %198

50:                                               ; preds = %33
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @scsi_format_opcode_name(i8* %53, i64 %56, i32* %59)
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %198

67:                                               ; preds = %50
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 16
  br i1 %71, label %72, label %165

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub i64 %76, %77
  %79 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %75, i64 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %5, align 8
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @dev_printk(i32 %82, i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @scsi_log_release_buffer(i8* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %161, %72
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %164

97:                                               ; preds = %91
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i64 @min(i32 %102, i32 16)
  store i64 %103, i64* %7, align 8
  %104 = call i8* @scsi_log_reserve_buffer(i64* %6)
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  br label %164

108:                                              ; preds = %97
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %112 = call i32 @scmd_name(%struct.scsi_cmnd* %111)
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @sdev_format_header(i8* %109, i64 %110, i32 %112, i32 %117)
  store i64 %118, i64* %5, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = sub i64 %120, 58
  %122 = icmp ugt i64 %119, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @WARN_ON(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %108
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %5, align 8
  %132 = sub i64 %130, %131
  %133 = load i32, i32* %3, align 4
  %134 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %129, i64 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %5, align 8
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %138 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i64, i64* %7, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* %5, align 8
  %149 = sub i64 %147, %148
  %150 = call i32 @hex_dump_to_buffer(i32* %142, i64 %143, i32 16, i32 1, i8* %146, i64 %149, i32 0)
  br label %151

151:                                              ; preds = %126, %108
  %152 = load i32, i32* @KERN_INFO, align 4
  %153 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %154 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @dev_printk(i32 %152, i32* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %157)
  %159 = load i8*, i8** %4, align 8
  %160 = call i32 @scsi_log_release_buffer(i8* %159)
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 16
  store i32 %163, i32* %3, align 4
  br label %91

164:                                              ; preds = %107, %91
  br label %208

165:                                              ; preds = %67
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = sub i64 %167, 49
  %169 = icmp ugt i64 %166, %168
  %170 = zext i1 %169 to i32
  %171 = call i64 @WARN_ON(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %165
  %174 = load i8*, i8** %4, align 8
  %175 = load i64, i64* %5, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* %5, align 8
  %179 = sub i64 %177, %178
  %180 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %176, i64 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %5, align 8
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %184 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i8*, i8** %4, align 8
  %191 = load i64, i64* %5, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* %5, align 8
  %195 = sub i64 %193, %194
  %196 = call i32 @hex_dump_to_buffer(i32* %185, i64 %189, i32 16, i32 1, i8* %192, i64 %195, i32 0)
  br label %197

197:                                              ; preds = %173, %165
  br label %198

198:                                              ; preds = %197, %66, %49, %32
  %199 = load i32, i32* @KERN_INFO, align 4
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i8*, i8** %4, align 8
  %205 = call i32 @dev_printk(i32 %199, i32* %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %204)
  %206 = load i8*, i8** %4, align 8
  %207 = call i32 @scsi_log_release_buffer(i8* %206)
  br label %208

208:                                              ; preds = %198, %164, %17, %12
  ret void
}

declare dso_local i8* @scsi_log_reserve_buffer(i64*) #1

declare dso_local i64 @sdev_format_header(i8*, i64, i32, i32) #1

declare dso_local i32 @scmd_name(%struct.scsi_cmnd*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @scsi_format_opcode_name(i8*, i64, i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*) #1

declare dso_local i32 @scsi_log_release_buffer(i8*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i64, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
