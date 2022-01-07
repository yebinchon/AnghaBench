; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_session_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_session_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%02x%02x%02x%02x%02x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_session_get_param(%struct.iscsi_cls_session* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %10, i32 0, i32 0
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %278 [
    i32 148, label %14
    i32 165, label %20
    i32 141, label %26
    i32 132, label %32
    i32 144, label %38
    i32 139, label %44
    i32 145, label %50
    i32 147, label %56
    i32 140, label %62
    i32 136, label %68
    i32 158, label %74
    i32 157, label %80
    i32 149, label %86
    i32 133, label %92
    i32 134, label %98
    i32 131, label %104
    i32 129, label %110
    i32 128, label %116
    i32 138, label %122
    i32 137, label %128
    i32 146, label %134
    i32 143, label %140
    i32 161, label %146
    i32 162, label %152
    i32 160, label %158
    i32 164, label %164
    i32 150, label %170
    i32 135, label %176
    i32 159, label %182
    i32 153, label %188
    i32 163, label %194
    i32 154, label %200
    i32 155, label %206
    i32 156, label %212
    i32 130, label %218
    i32 142, label %224
    i32 152, label %257
    i32 151, label %263
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %9, align 4
  br label %281

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %9, align 4
  br label %281

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %9, align 4
  br label %281

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %9, align 4
  br label %281

38:                                               ; preds = %3
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %41 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %9, align 4
  br label %281

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 37
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %9, align 4
  br label %281

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %53 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %9, align 4
  br label %281

56:                                               ; preds = %3
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %9, align 4
  br label %281

62:                                               ; preds = %3
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %9, align 4
  br label %281

68:                                               ; preds = %3
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %71 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %9, align 4
  br label %281

74:                                               ; preds = %3
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %77 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %9, align 4
  br label %281

80:                                               ; preds = %3
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %83 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 %85, i32* %9, align 4
  br label %281

86:                                               ; preds = %3
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %89 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %90)
  store i32 %91, i32* %9, align 4
  br label %281

92:                                               ; preds = %3
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %95 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %94, i32 0, i32 12
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  store i32 %97, i32* %9, align 4
  br label %281

98:                                               ; preds = %3
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %101 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %100, i32 0, i32 13
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  store i32 %103, i32* %9, align 4
  br label %281

104:                                              ; preds = %3
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %107 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %106, i32 0, i32 14
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %9, align 4
  br label %281

110:                                              ; preds = %3
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %113 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %112, i32 0, i32 15
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %114)
  store i32 %115, i32* %9, align 4
  br label %281

116:                                              ; preds = %3
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %119 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %118, i32 0, i32 16
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  store i32 %121, i32* %9, align 4
  br label %281

122:                                              ; preds = %3
  %123 = load i8*, i8** %7, align 8
  %124 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %125 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %124, i32 0, i32 17
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %126)
  store i32 %127, i32* %9, align 4
  br label %281

128:                                              ; preds = %3
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %131 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %130, i32 0, i32 18
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %132)
  store i32 %133, i32* %9, align 4
  br label %281

134:                                              ; preds = %3
  %135 = load i8*, i8** %7, align 8
  %136 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %137 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %136, i32 0, i32 19
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  store i32 %139, i32* %9, align 4
  br label %281

140:                                              ; preds = %3
  %141 = load i8*, i8** %7, align 8
  %142 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %143 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %142, i32 0, i32 20
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %144)
  store i32 %145, i32* %9, align 4
  br label %281

146:                                              ; preds = %3
  %147 = load i8*, i8** %7, align 8
  %148 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %149 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %148, i32 0, i32 21
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, i8*, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %150)
  store i32 %151, i32* %9, align 4
  br label %281

152:                                              ; preds = %3
  %153 = load i8*, i8** %7, align 8
  %154 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %155 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %154, i32 0, i32 22
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  store i32 %157, i32* %9, align 4
  br label %281

158:                                              ; preds = %3
  %159 = load i8*, i8** %7, align 8
  %160 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %161 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %160, i32 0, i32 23
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %162)
  store i32 %163, i32* %9, align 4
  br label %281

164:                                              ; preds = %3
  %165 = load i8*, i8** %7, align 8
  %166 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %167 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %166, i32 0, i32 24
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  store i32 %169, i32* %9, align 4
  br label %281

170:                                              ; preds = %3
  %171 = load i8*, i8** %7, align 8
  %172 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %173 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %172, i32 0, i32 25
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  store i32 %175, i32* %9, align 4
  br label %281

176:                                              ; preds = %3
  %177 = load i8*, i8** %7, align 8
  %178 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %179 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %178, i32 0, i32 26
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %180)
  store i32 %181, i32* %9, align 4
  br label %281

182:                                              ; preds = %3
  %183 = load i8*, i8** %7, align 8
  %184 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %185 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %184, i32 0, i32 27
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  store i32 %187, i32* %9, align 4
  br label %281

188:                                              ; preds = %3
  %189 = load i8*, i8** %7, align 8
  %190 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %191 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %190, i32 0, i32 28
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  store i32 %193, i32* %9, align 4
  br label %281

194:                                              ; preds = %3
  %195 = load i8*, i8** %7, align 8
  %196 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %197 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %196, i32 0, i32 29
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  store i32 %199, i32* %9, align 4
  br label %281

200:                                              ; preds = %3
  %201 = load i8*, i8** %7, align 8
  %202 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %203 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %202, i32 0, i32 30
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  store i32 %205, i32* %9, align 4
  br label %281

206:                                              ; preds = %3
  %207 = load i8*, i8** %7, align 8
  %208 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %209 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %208, i32 0, i32 31
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i8*, i8*, ...) @sprintf(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %210)
  store i32 %211, i32* %9, align 4
  br label %281

212:                                              ; preds = %3
  %213 = load i8*, i8** %7, align 8
  %214 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %215 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %214, i32 0, i32 32
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, i8*, ...) @sprintf(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %216)
  store i32 %217, i32* %9, align 4
  br label %281

218:                                              ; preds = %3
  %219 = load i8*, i8** %7, align 8
  %220 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %221 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %220, i32 0, i32 33
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (i8*, i8*, ...) @sprintf(i8* %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %222)
  store i32 %223, i32* %9, align 4
  br label %281

224:                                              ; preds = %3
  %225 = load i8*, i8** %7, align 8
  %226 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %227 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %226, i32 0, i32 34
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %232 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %231, i32 0, i32 34
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %237 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %236, i32 0, i32 34
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %242 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %241, i32 0, i32 34
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %247 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %246, i32 0, i32 34
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %252 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %251, i32 0, i32 34
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 5
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i8*, i8*, ...) @sprintf(i8* %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %230, i32 %235, i32 %240, i32 %245, i32 %250, i32 %255)
  store i32 %256, i32* %9, align 4
  br label %281

257:                                              ; preds = %3
  %258 = load i8*, i8** %7, align 8
  %259 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %260 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %259, i32 0, i32 35
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, i8*, ...) @sprintf(i8* %258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %261)
  store i32 %262, i32* %9, align 4
  br label %281

263:                                              ; preds = %3
  %264 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %265 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %264, i32 0, i32 36
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load i8*, i8** %7, align 8
  %270 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %271 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %270, i32 0, i32 36
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 (i8*, i8*, ...) @sprintf(i8* %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %272)
  store i32 %273, i32* %9, align 4
  br label %277

274:                                              ; preds = %263
  %275 = load i8*, i8** %7, align 8
  %276 = call i32 (i8*, i8*, ...) @sprintf(i8* %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %274, %268
  br label %281

278:                                              ; preds = %3
  %279 = load i32, i32* @ENOSYS, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %4, align 4
  br label %283

281:                                              ; preds = %277, %257, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14
  %282 = load i32, i32* %9, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %281, %278
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
