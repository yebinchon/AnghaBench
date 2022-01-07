; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TCP_Server_Info = type { i64, i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.smb_vol = type { i64, i32, i64, i64, i64, i32, %struct.TYPE_4__*, i64, i32 }
%struct.sockaddr = type { i32 }

@SMB3ANY_VERSION_STRING = common dso_local global i32 0, align 4
@SMB30_PROT_ID = common dso_local global i64 0, align 8
@SMBDEFAULT_VERSION_STRING = common dso_local global i32 0, align 4
@SMB21_PROT_ID = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_vol*)* @match_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_server(%struct.TCP_Server_Info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %7 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %8 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %7, i32 0, i32 8
  %9 = bitcast i32* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %11 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

15:                                               ; preds = %2
  %16 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %17 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %16, i32 0, i32 6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SMB3ANY_VERSION_STRING, align 4
  %22 = call i64 @strcmp(i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %26 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SMB30_PROT_ID, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %143

33:                                               ; preds = %24
  br label %72

34:                                               ; preds = %15
  %35 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %36 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %35, i32 0, i32 6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SMBDEFAULT_VERSION_STRING, align 4
  %41 = call i64 @strcmp(i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %45 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %44, i32 0, i32 5
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SMB21_PROT_ID, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %143

52:                                               ; preds = %43
  br label %71

53:                                               ; preds = %34
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %58 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %57, i32 0, i32 6
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %63 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %66 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %53
  store i32 0, i32* %3, align 4
  br label %143

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %33
  %73 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %74 = call i32 @cifs_net_ns(%struct.TCP_Server_Info* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @net_eq(i32 %74, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %143

83:                                               ; preds = %72
  %84 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %85 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %86 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %87 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %86, i32 0, i32 5
  %88 = bitcast i32* %87 to %struct.sockaddr*
  %89 = call i32 @match_address(%struct.TCP_Server_Info* %84, %struct.sockaddr* %85, %struct.sockaddr* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %143

92:                                               ; preds = %83
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %94 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %95 = call i32 @match_port(%struct.TCP_Server_Info* %93, %struct.sockaddr* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %143

98:                                               ; preds = %92
  %99 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %100 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %101 = call i32 @match_security(%struct.TCP_Server_Info* %99, %struct.smb_vol* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %143

104:                                              ; preds = %98
  %105 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %106 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %109 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @HZ, align 4
  %112 = mul nsw i32 %110, %111
  %113 = icmp ne i32 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %143

115:                                              ; preds = %104
  %116 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %117 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %120 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %143

124:                                              ; preds = %115
  %125 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %126 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %129 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %143

133:                                              ; preds = %124
  %134 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %135 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %138 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %143

142:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %141, %132, %123, %114, %103, %97, %91, %82, %69, %51, %32, %14
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @cifs_net_ns(%struct.TCP_Server_Info*) #1

declare dso_local i32 @match_address(%struct.TCP_Server_Info*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @match_port(%struct.TCP_Server_Info*, %struct.sockaddr*) #1

declare dso_local i32 @match_security(%struct.TCP_Server_Info*, %struct.smb_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
