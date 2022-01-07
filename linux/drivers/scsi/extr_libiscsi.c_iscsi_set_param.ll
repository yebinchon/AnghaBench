; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %10, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 10
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %17, align 8
  store %struct.iscsi_session* %18, %struct.iscsi_session** %11, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %210 [
    i32 154, label %20
    i32 164, label %25
    i32 146, label %30
    i32 131, label %35
    i32 136, label %40
    i32 134, label %45
    i32 143, label %50
    i32 142, label %55
    i32 152, label %60
    i32 160, label %65
    i32 149, label %70
    i32 144, label %75
    i32 150, label %80
    i32 153, label %85
    i32 145, label %90
    i32 139, label %95
    i32 159, label %100
    i32 156, label %105
    i32 155, label %110
    i32 129, label %115
    i32 128, label %120
    i32 141, label %125
    i32 140, label %130
    i32 132, label %135
    i32 133, label %140
    i32 130, label %145
    i32 137, label %150
    i32 138, label %155
    i32 151, label %160
    i32 148, label %165
    i32 162, label %170
    i32 163, label %175
    i32 161, label %180
    i32 135, label %185
    i32 158, label %190
    i32 157, label %195
    i32 147, label %205
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 0
  %24 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %23)
  br label %213

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 1
  %29 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %28)
  br label %213

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 2
  %34 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %33)
  br label %213

35:                                               ; preds = %4
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 3
  %39 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %38)
  br label %213

40:                                               ; preds = %4
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %43)
  br label %213

45:                                               ; preds = %4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 1
  %49 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %48)
  br label %213

50:                                               ; preds = %4
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 2
  %54 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %53)
  br label %213

55:                                               ; preds = %4
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 3
  %59 = call i32 @sscanf(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %58)
  br label %213

60:                                               ; preds = %4
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 4
  %64 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %63)
  br label %213

65:                                               ; preds = %4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 5
  %69 = call i32 @sscanf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %68)
  br label %213

70:                                               ; preds = %4
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %73 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %72, i32 0, i32 4
  %74 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %73)
  br label %213

75:                                               ; preds = %4
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %78 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %77, i32 0, i32 5
  %79 = call i32 @sscanf(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %78)
  br label %213

80:                                               ; preds = %4
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %83 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %82, i32 0, i32 6
  %84 = call i32 @sscanf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %83)
  br label %213

85:                                               ; preds = %4
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %88 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %87, i32 0, i32 7
  %89 = call i32 @sscanf(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %88)
  br label %213

90:                                               ; preds = %4
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %93 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %92, i32 0, i32 8
  %94 = call i32 @sscanf(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %93)
  br label %213

95:                                               ; preds = %4
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %98 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %97, i32 0, i32 9
  %99 = call i32 @sscanf(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %98)
  br label %213

100:                                              ; preds = %4
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %103 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %102, i32 0, i32 10
  %104 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %103)
  br label %213

105:                                              ; preds = %4
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %108 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %107, i32 0, i32 11
  %109 = call i32 @sscanf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %108)
  br label %213

110:                                              ; preds = %4
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 6
  %114 = call i32 @sscanf(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %113)
  br label %213

115:                                              ; preds = %4
  %116 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %117 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %116, i32 0, i32 26
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @iscsi_switch_str_param(i32* %117, i8* %118)
  store i32 %119, i32* %5, align 4
  br label %214

120:                                              ; preds = %4
  %121 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %122 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %121, i32 0, i32 25
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @iscsi_switch_str_param(i32* %122, i8* %123)
  store i32 %124, i32* %5, align 4
  br label %214

125:                                              ; preds = %4
  %126 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %127 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %126, i32 0, i32 24
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @iscsi_switch_str_param(i32* %127, i8* %128)
  store i32 %129, i32* %5, align 4
  br label %214

130:                                              ; preds = %4
  %131 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %132 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %131, i32 0, i32 23
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @iscsi_switch_str_param(i32* %132, i8* %133)
  store i32 %134, i32* %5, align 4
  br label %214

135:                                              ; preds = %4
  %136 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %137 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %136, i32 0, i32 22
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @iscsi_switch_str_param(i32* %137, i8* %138)
  store i32 %139, i32* %5, align 4
  br label %214

140:                                              ; preds = %4
  %141 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %142 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %141, i32 0, i32 21
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @iscsi_switch_str_param(i32* %142, i8* %143)
  store i32 %144, i32* %5, align 4
  br label %214

145:                                              ; preds = %4
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %148 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %147, i32 0, i32 12
  %149 = call i32 @sscanf(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %148)
  br label %213

150:                                              ; preds = %4
  %151 = load i8*, i8** %8, align 8
  %152 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %153 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %152, i32 0, i32 7
  %154 = call i32 @sscanf(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %153)
  br label %213

155:                                              ; preds = %4
  %156 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %157 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %156, i32 0, i32 9
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @iscsi_switch_str_param(i32* %157, i8* %158)
  store i32 %159, i32* %5, align 4
  br label %214

160:                                              ; preds = %4
  %161 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %162 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %161, i32 0, i32 20
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @iscsi_switch_str_param(i32* %162, i8* %163)
  store i32 %164, i32* %5, align 4
  br label %214

165:                                              ; preds = %4
  %166 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %167 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %166, i32 0, i32 19
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @iscsi_switch_str_param(i32* %167, i8* %168)
  store i32 %169, i32* %5, align 4
  br label %214

170:                                              ; preds = %4
  %171 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %172 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %171, i32 0, i32 18
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @iscsi_switch_str_param(i32* %172, i8* %173)
  store i32 %174, i32* %5, align 4
  br label %214

175:                                              ; preds = %4
  %176 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %177 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %176, i32 0, i32 17
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @iscsi_switch_str_param(i32* %177, i8* %178)
  store i32 %179, i32* %5, align 4
  br label %214

180:                                              ; preds = %4
  %181 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %182 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %181, i32 0, i32 16
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @iscsi_switch_str_param(i32* %182, i8* %183)
  store i32 %184, i32* %5, align 4
  br label %214

185:                                              ; preds = %4
  %186 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %187 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %186, i32 0, i32 15
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @iscsi_switch_str_param(i32* %187, i8* %188)
  store i32 %189, i32* %5, align 4
  br label %214

190:                                              ; preds = %4
  %191 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %192 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %191, i32 0, i32 14
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @iscsi_switch_str_param(i32* %192, i8* %193)
  store i32 %194, i32* %5, align 4
  br label %214

195:                                              ; preds = %4
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 @sscanf(i8* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %204 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %203, i32 0, i32 13
  store i32 %202, i32* %204, align 4
  br label %213

205:                                              ; preds = %4
  %206 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %207 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %206, i32 0, i32 8
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 @iscsi_switch_str_param(i32* %207, i8* %208)
  store i32 %209, i32* %5, align 4
  br label %214

210:                                              ; preds = %4
  %211 = load i32, i32* @ENOSYS, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %5, align 4
  br label %214

213:                                              ; preds = %195, %150, %145, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %210, %205, %190, %185, %180, %175, %170, %165, %160, %155, %140, %135, %130, %125, %120, %115
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @iscsi_switch_str_param(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
