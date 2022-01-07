; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_dump_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"0x%x: count=%d, status: \00", align 1
@EP_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"enable flag\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"1-wire speed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"strong pullup duration\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"programming pulse duration\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"pulldown slew rate control\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"write-1 low time\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"data sample offset/write-0 recovery time\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"reserved (test register)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"device status flags\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"communication command byte 1\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"communication command byte 2\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"communication command buffer status\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"1-wire data output buffer status\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"1-wire data input buffer status\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@RR_DETECT = common dso_local global i8 0, align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"new device detect\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Result Register Value: \00", align 1
@RR_NRS = common dso_local global i8 0, align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"NRS: Reset no presence or ...\0A\00", align 1
@RR_SH = common dso_local global i8 0, align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"SH: short on reset or set path\0A\00", align 1
@RR_APP = common dso_local global i8 0, align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"APP: alarming presence on reset\0A\00", align 1
@RR_VPP = common dso_local global i8 0, align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"VPP: 12V expected not seen\0A\00", align 1
@RR_CMP = common dso_local global i8 0, align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"CMP: compare error\0A\00", align 1
@RR_CRC = common dso_local global i8 0, align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"CRC: CRC error detected\0A\00", align 1
@RR_RDP = common dso_local global i8 0, align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"RDP: redirected page\0A\00", align 1
@RR_EOS = common dso_local global i8 0, align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"EOS: end of search error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_device*, i8*, i32)* @ds_dump_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_dump_status(%struct.ds_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ds_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ds_device* %0, %struct.ds_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %9 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @EP_STATUS, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %16

31:                                               ; preds = %16
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 16
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @ds_print_msg(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @ds_print_msg(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @ds_print_msg(i8* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @ds_print_msg(i8* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @ds_print_msg(i8* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @ds_print_msg(i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @ds_print_msg(i8* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @ds_print_msg(i8* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @ds_print_msg(i8* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @ds_print_msg(i8* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 9)
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @ds_print_msg(i8* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 10)
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @ds_print_msg(i8* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 11)
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @ds_print_msg(i8* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @ds_print_msg(i8* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 13)
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @ds_print_msg(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 14)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @ds_print_msg(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 15)
  br label %68

68:                                               ; preds = %35, %31
  store i32 16, i32* %7, align 4
  br label %69

69:                                               ; preds = %195, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %198

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @RR_DETECT, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ds_print_msg(i8* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %85)
  br label %195

87:                                               ; preds = %73
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ds_print_msg(i8* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @RR_NRS, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %87
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @RR_SH, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %103
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @RR_APP, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %116
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @RR_VPP, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %129
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* @RR_CMP, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %142
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @RR_CRC, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %155
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @RR_RDP, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %174, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %168
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @RR_EOS, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %181
  br label %195

195:                                              ; preds = %194, %83
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %69

198:                                              ; preds = %69
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ds_print_msg(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
