; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_get_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_get_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_request = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@ST_READY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SCSI_2 = common dso_local global i64 0, align 8
@QFA_REQUEST_BLOCK = common dso_local global i8 0, align 1
@READ_POSITION = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MAX_READY_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" Can't read tape position.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Got tape pos. blk %d part %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32*, i32*, i32)* @get_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_location(%struct.scsi_tape* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_tape*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.st_request*, align 8
  %14 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ST_READY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %227

27:                                               ; preds = %4
  %28 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %29 = call i32 @memset(i8* %18, i32 0, i32 %28)
  %30 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %31 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SCSI_2, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i8, i8* @QFA_REQUEST_BLOCK, align 1
  %39 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %38, i8* %39, align 16
  %40 = getelementptr inbounds i8, i8* %18, i64 4
  store i8 3, i8* %40, align 4
  br label %54

41:                                               ; preds = %27
  %42 = load i8, i8* @READ_POSITION, align 1
  %43 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %42, i8* %43, align 16
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 1, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46, %41
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MAX_READY_RETRIES, align 4
  %65 = call %struct.st_request* @st_do_scsi(i32* null, %struct.scsi_tape* %55, i8* %18, i32 20, i32 %56, i32 %63, i32 %64, i32 1)
  store %struct.st_request* %65, %struct.st_request** %13, align 8
  %66 = load %struct.st_request*, %struct.st_request** %13, align 8
  %67 = icmp ne %struct.st_request* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %54
  %69 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %70 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %227

74:                                               ; preds = %54
  %75 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %76 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %74
  %82 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SCSI_2, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %81
  %90 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %89, %74
  %100 = load i32*, i32** %8, align 8
  store i32 0, i32* %100, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 0, i32* %101, align 4
  %102 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %103 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %223

106:                                              ; preds = %89, %81
  store i32 0, i32* %10, align 4
  %107 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %108 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SCSI_2, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %106
  %115 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 16
  %123 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %124 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = add nsw i32 %122, %130
  %132 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %133 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %131, %138
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %8, align 8
  store i32 0, i32* %141, align 4
  br label %216

142:                                              ; preds = %106
  %143 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %144 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 24
  %151 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %152 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 16
  %159 = add nsw i32 %150, %158
  %160 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 6
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = add nsw i32 %159, %167
  %169 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %170 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 7
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %168, %175
  %177 = load i32*, i32** %7, align 8
  store i32 %176, i32* %177, align 4
  %178 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %179 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %8, align 8
  store i32 %184, i32* %185, align 4
  %186 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %187 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %186, i32 0, i32 2
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 128
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %142
  %196 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %197 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %196, i32 0, i32 2
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %195
  %205 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %206 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %205, i32 0, i32 1
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  %210 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %211 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %210, i32 0, i32 1
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  br label %215

215:                                              ; preds = %204, %195, %142
  br label %216

216:                                              ; preds = %215, %114
  %217 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %217, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %219, i32 %221)
  br label %223

223:                                              ; preds = %216, %99
  %224 = load %struct.st_request*, %struct.st_request** %13, align 8
  %225 = call i32 @st_release_request(%struct.st_request* %224)
  store %struct.st_request* null, %struct.st_request** %13, align 8
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %227

227:                                              ; preds = %223, %68, %24
  %228 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.st_request* @st_do_scsi(i32*, %struct.scsi_tape*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, ...) #2

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
