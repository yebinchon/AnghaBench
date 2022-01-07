; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_get_cur_inode_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_get_cur_inode_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@inode_state_no_change = common dso_local global i32 0, align 4
@inode_state_did_create = common dso_local global i32 0, align 4
@inode_state_will_create = common dso_local global i32 0, align 4
@inode_state_did_delete = common dso_local global i32 0, align 4
@inode_state_will_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64, i64)* @get_cur_inode_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_inode_state(%struct.send_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @get_inode_info(i32 %14, i64 %15, i32* null, i64* %10, i32* null, i32* null, i32* null, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %152

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @get_inode_info(i32 %37, i64 %38, i32* null, i64* %11, i32* null, i32* null, i32* null, i32* null)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %152

48:                                               ; preds = %42, %34
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %31
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %102, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %102, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @inode_state_no_change, align 4
  store i32 %65, i32* %7, align 4
  br label %101

66:                                               ; preds = %60, %56
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @inode_state_did_create, align 4
  store i32 %77, i32* %7, align 4
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @inode_state_will_create, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %100

81:                                               ; preds = %66
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @inode_state_did_delete, align 4
  store i32 %92, i32* %7, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @inode_state_will_delete, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %99

96:                                               ; preds = %81
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %64
  br label %151

102:                                              ; preds = %53, %50
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %124, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %112 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @inode_state_did_create, align 4
  store i32 %116, i32* %7, align 4
  br label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @inode_state_will_create, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %115
  br label %123

120:                                              ; preds = %105
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %120, %119
  br label %150

124:                                              ; preds = %102
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @inode_state_did_delete, align 4
  store i32 %138, i32* %7, align 4
  br label %141

139:                                              ; preds = %131
  %140 = load i32, i32* @inode_state_will_delete, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %137
  br label %145

142:                                              ; preds = %127
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %142, %141
  br label %149

146:                                              ; preds = %124
  %147 = load i32, i32* @ENOENT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %146, %145
  br label %150

150:                                              ; preds = %149, %123
  br label %151

151:                                              ; preds = %150, %101
  br label %152

152:                                              ; preds = %151, %47, %24
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @get_inode_info(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
