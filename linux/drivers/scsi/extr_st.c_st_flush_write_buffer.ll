; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_flush_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_flush_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, i32, i64, %struct.TYPE_8__*, %struct.st_partstat*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, %struct.st_cmdstatus }
%struct.st_cmdstatus = type { i32, i64, i32, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.st_partstat = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_request = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Flushing %d bytes.\0A\00", align 1
@WRITE_6 = common dso_local global i8 0, align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_WRITE_RETRIES = common dso_local global i32 0, align 4
@SENSE_EOM = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i64 0, align 8
@RECOVERED_ERROR = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Error on flush.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*)* @st_flush_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_flush_write_buffer(%struct.scsi_tape* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.st_request*, align 8
  %10 = alloca %struct.st_partstat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.st_cmdstatus*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  %13 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %18 = call i32 @write_behind_check(%struct.scsi_tape* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %189

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %24 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %187

28:                                               ; preds = %23
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  %34 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @DEBC_printk(%struct.scsi_tape* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %38 = call i32 @memset(i8* %16, i32 0, i32 %37)
  %39 = load i8, i8* @WRITE_6, align 1
  %40 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %39, i8* %40, align 16
  %41 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 1, i8* %41, align 1
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %49, i8* %50, align 2
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, i8* %16, i64 3
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %5, align 4
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, i8* %16, i64 4
  store i8 %56, i8* %57, align 4
  %58 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX_WRITE_RETRIES, align 4
  %69 = call %struct.st_request* @st_do_scsi(i32* null, %struct.scsi_tape* %58, i8* %16, i32 %59, i32 %60, i32 %67, i32 %68, i32 1)
  store %struct.st_request* %69, %struct.st_request** %9, align 8
  %70 = load %struct.st_request*, %struct.st_request** %9, align 8
  %71 = icmp ne %struct.st_request* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %28
  %73 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %189

78:                                               ; preds = %28
  %79 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %79, i32 0, i32 4
  %81 = load %struct.st_partstat*, %struct.st_partstat** %80, align 8
  %82 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %81, i64 %84
  store %struct.st_partstat* %85, %struct.st_partstat** %10, align 8
  %86 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %166

92:                                               ; preds = %78
  %93 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store %struct.st_cmdstatus* %96, %struct.st_cmdstatus** %12, align 8
  %97 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %98 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %92
  %102 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %103 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %157, label %106

106:                                              ; preds = %101
  %107 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %108 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SENSE_EOM, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %106
  %114 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %115 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NO_SENSE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %122 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RECOVERED_ERROR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %120, %113
  %128 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %129 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %12, align 8
  %134 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %132, %127
  %138 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %139 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %141 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %140, i32 0, i32 3
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load %struct.st_partstat*, %struct.st_partstat** %10, align 8
  %145 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.st_partstat*, %struct.st_partstat** %10, align 8
  %151 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %137
  %155 = load i32, i32* @ENOSPC, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %165

157:                                              ; preds = %132, %120, %106, %101, %92
  %158 = load i32, i32* @KERN_ERR, align 4
  %159 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %160 = call i32 @st_printk(i32 %158, %struct.scsi_tape* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %161 = load %struct.st_partstat*, %struct.st_partstat** %10, align 8
  %162 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %161, i32 0, i32 0
  store i32 -1, i32* %162, align 4
  %163 = load i32, i32* @EIO, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %157, %154
  br label %184

166:                                              ; preds = %78
  %167 = load %struct.st_partstat*, %struct.st_partstat** %10, align 8
  %168 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.st_partstat*, %struct.st_partstat** %10, align 8
  %174 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %179 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %181 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %180, i32 0, i32 3
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %177, %165
  %185 = load %struct.st_request*, %struct.st_request** %9, align 8
  %186 = call i32 @st_release_request(%struct.st_request* %185)
  store %struct.st_request* null, %struct.st_request** %9, align 8
  br label %187

187:                                              ; preds = %184, %23
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %189

189:                                              ; preds = %187, %72, %21
  %190 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_behind_check(%struct.scsi_tape*) #2

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.st_request* @st_do_scsi(i32*, %struct.scsi_tape*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @st_printk(i32, %struct.scsi_tape*, i8*) #2

declare dso_local i32 @st_release_request(%struct.st_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
