; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_handle_dle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_handle_dle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, i32*, i64, i64, %struct.cardstate* }
%struct.cardstate = type { i64, i32, i64 }

@MS_LOCKED = common dso_local global i64 0, align 8
@INS_DLE_char = common dso_local global i32 0, align 4
@INS_DLE_command = common dso_local global i32 0, align 4
@RBUFSIZE = common dso_local global i64 0, align 8
@INS_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"received <DLE>X in command mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"received <DLE>. without <DLE>X\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"received <DLE><DLE> not in DLE mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"received <DLE><%02x>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inbuf_t*)* @handle_dle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_dle(%struct.inbuf_t* %0) #0 {
  %2 = alloca %struct.inbuf_t*, align 8
  %3 = alloca %struct.cardstate*, align 8
  store %struct.inbuf_t* %0, %struct.inbuf_t** %2, align 8
  %4 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %5 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %4, i32 0, i32 4
  %6 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  store %struct.cardstate* %6, %struct.cardstate** %3, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MS_LOCKED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %179

13:                                               ; preds = %1
  %14 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %15 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @INS_DLE_char, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %13
  %21 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %22 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %25 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %67

30:                                               ; preds = %20
  %31 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %37 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @INS_DLE_command, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %35, %30
  %43 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %44 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %48 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %51 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %56 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RBUFSIZE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54, %42
  %61 = load i32, i32* @INS_DLE_char, align 4
  %62 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %63 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %179

66:                                               ; preds = %54
  br label %68

67:                                               ; preds = %35, %20
  br label %179

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %13
  %70 = load i32, i32* @INS_DLE_char, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %73 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %77 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %80 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %166 [
    i32 88, label %84
    i32 46, label %108
    i32 128, label %143
  ]

84:                                               ; preds = %69
  %85 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %86 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @INS_command, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %93 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @dev_notice(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32, i32* @INS_command, align 4
  %98 = load i32, i32* @INS_DLE_command, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %101 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %105 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %179

108:                                              ; preds = %69
  %109 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %110 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @INS_DLE_command, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %117 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @dev_notice(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %108
  %121 = load i32, i32* @INS_DLE_command, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %124 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %128 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = load i32, i32* @INS_command, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %135 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %120
  %139 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %140 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %179

143:                                              ; preds = %69
  %144 = load i32, i32* @INS_DLE_char, align 4
  %145 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %146 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %150 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %143
  %154 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %155 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @INS_DLE_command, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  %161 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %162 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @dev_notice(i32 %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %153, %143
  br label %179

166:                                              ; preds = %69
  %167 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %168 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %171 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %174 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, ...) @dev_notice(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %12, %60, %67, %166, %165, %138, %96
  ret void
}

declare dso_local i32 @dev_notice(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
