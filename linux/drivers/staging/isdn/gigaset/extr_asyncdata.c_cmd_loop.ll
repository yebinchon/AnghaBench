; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_cmd_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_cmd_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i8*, i32, i32, %struct.cardstate* }
%struct.cardstate = type { i32, i8*, i32, i32 }

@MAX_RESP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"response too large (%d)\0A\00", align 1
@DEBUG_TRANSCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"received response\00", align 1
@INS_DLE_command = common dso_local global i32 0, align 4
@INS_command = common dso_local global i32 0, align 4
@INS_DLE_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inbuf_t*)* @cmd_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_loop(i32 %0, %struct.inbuf_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inbuf_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.inbuf_t* %1, %struct.inbuf_t** %4, align 8
  %10 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %11 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %14 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %19 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %18, i32 0, i32 3
  %20 = load %struct.cardstate*, %struct.cardstate** %19, align 8
  store %struct.cardstate* %20, %struct.cardstate** %6, align 8
  %21 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %149, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %150

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %9, align 1
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %134 [
    i32 10, label %36
    i32 13, label %53
    i32 128, label %100
  ]

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %51, align 1
  br label %149

52:                                               ; preds = %39, %36
  br label %53

53:                                               ; preds = %28, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MAX_RESP_SIZE, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %59 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @MAX_RESP_SIZE, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %57, %53
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %67 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @DEBUG_TRANSCMD, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %71 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @gigaset_dbg_buffer(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %72)
  %74 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %75 = call i32 @gigaset_handle_modem_response(%struct.cardstate* %74)
  store i32 0, i32* %7, align 4
  %76 = load i8, i8* %9, align 1
  %77 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %76, i8* %80, align 1
  %81 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %82 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %64
  %86 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %87 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @INS_DLE_command, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @INS_command, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %96 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %92, %85, %64
  br label %151

100:                                              ; preds = %28
  %101 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %102 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @INS_DLE_char, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i32, i32* @INS_DLE_char, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %111 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %133

114:                                              ; preds = %100
  %115 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %116 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %121 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @INS_DLE_command, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119, %114
  %127 = load i32, i32* @INS_DLE_char, align 4
  %128 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %129 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %151

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %107
  br label %134

134:                                              ; preds = %28, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @MAX_RESP_SIZE, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i8, i8* %9, align 1
  %140 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %141 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %139, i8* %145, align 1
  br label %146

146:                                              ; preds = %138, %134
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %146, %47
  br label %24

150:                                              ; preds = %24
  br label %151

151:                                              ; preds = %150, %126, %99
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %154 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %8, align 4
  ret i32 %155
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @gigaset_dbg_buffer(i32, i8*, i32, i8*) #1

declare dso_local i32 @gigaset_handle_modem_response(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
